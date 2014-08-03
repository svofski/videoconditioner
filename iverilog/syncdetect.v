`default_nettype none

module syncdetect(input clk, input ce, input [5:0] cvbs, output reg hsync, output reg vsync, output [5:0] blacklevel, output reg error, output reg porch, output [5:0] threshold);
//parameter THRESH = 12;
parameter FILLCOUNT = 18;
parameter S1 = 0;
parameter S2 = 1;
parameter S2A = 11;
parameter S3 = 2;
parameter S4 = 3;
parameter S5 = 4;
parameter S6 = 5;

parameter CLK = 24e6;
parameter HSYNC_TIME = CLK * 4.7e-6;
parameter BACKPORCH_TIME = CLK * 5.7e-6;
parameter REST_TIME = CLK * 64e-6 - (HSYNC_TIME + BACKPORCH_TIME);

assign threshold = r_threshold;
assign blacklevel = r_blacklevel;

reg [5:0] r_threshold = 10;
reg [5:0] r_blacklevel = 12;

reg [3:0] state = S1;
reg [15:0] timerA;
reg [15:0] accu;

reg hsync_int, vsync_int;
always @*
    //hsync <= ~(thresh_bitcount == 8);
    hsync <= hsync_int;
    
always @*
    vsync <= vsync_int;

wire thresh_raw = cvbs < r_threshold;
wire filtered_pulse = thresh_bitcount == 8;
wire thresh = filtered_pulse;
reg  filtered_samp = 0;
reg [3:0] thresh_bitcount = 0;
reg [7:0] threshaccu = 0;

initial begin
    thresh_bitcount = 0;
    threshaccu = 0;
end

always @(posedge clk)
    if (ce) begin
        thresh_bitcount <= thresh_bitcount + thresh_raw - threshaccu[7];
        threshaccu <= {threshaccu[6:0], thresh_raw};
    end
    

reg [4:0] vscount = 0;
    
always @(posedge clk) 
    if (ce) begin
        error <= 1'b0;
        if (timerA > 0) timerA <= timerA - 1'b1;
        
        case (state)
        S1: begin
                vsync_int <= 1;
                // waiting
                if (thresh) begin
                    state <= S2;
                    hsync_int <= 1'b0;
                    timerA <= HSYNC_TIME; 
                end 
                else if (timerA == 0) begin
                    error <= 1'b1;
                    timerA <= HSYNC_TIME;
                    state <= S1;
                end
            end
        S2: begin
                // in hsync
                if (timerA == 0) begin
                    // end hsync pulse
                    hsync_int <= 1'b1;
                    porch <= 1'b1;
                    state <= S2A;
                    //r_threshold <= (accu >> 7) + (blacklevel >> 1);
                end 
                else begin
                    //accu <= accu + cvbs;
                end
            end
        S2A:begin
                if (~thresh) begin
                    timerA <= BACKPORCH_TIME;
                    accu <= 0;
                    state <= S3;
                end
                else if (filtered_pulse) begin
                    // suddenly, sync level
                    $display("SUDDENLY S2A->S5");
                    vsync_int <= filtered_pulse;
                    vscount <= FILLCOUNT;
                    state <= S5;
                end
            end
        S3: begin
                // on back porch
                if (timerA == 0) begin
                    timerA <= REST_TIME - HSYNC_TIME;
                    r_blacklevel <= accu >> 7;
                    r_threshold <= (accu >> 8) + (accu >> 9);
                    //r_threshold <=
//                    if ((accu >> 7) < r_blacklevel) 
//                        r_threshold <= r_threshold - 1;
//                    else if ((accu >> 7) > r_blacklevel)
//                        r_threshold <= r_threshold + 1;
                       
                    porch <= 1'b0;
                    state <= S4;
                end
                else begin
                    accu <= accu + cvbs;

                    if (filtered_pulse) begin
                        // suddenly, sync level
                        $display("SUDDENLY S3->S5");
                        vsync_int <=filtered_pulse;
                        vscount <= FILLCOUNT;
                        state <= S5;
                    end
                end
            end
        S4: begin
                if (timerA == 0) begin
                    // line ends
                    timerA <= HSYNC_TIME;
                    state <= S1;
                end
//                else begin
//                    if (filtered_pulse) begin
//                        // suddenly, sync level
//                        $display("SUDDENLY S4->S5");
//                        vsync_int <= 1;
//                        vscount <= FILLCOUNT;
//                        state <= S5;
//                    end
//                end
            end
        S5: begin
                filtered_samp <= filtered_pulse;
                if (filtered_samp != filtered_pulse) begin
                    vsync_int <= ~vsync_int;
                    vscount <= vscount - 1'b1;
                end
                if (vscount == 0) begin
                    vsync_int <= 1;
                    timerA <= HSYNC_TIME;
                    $display("Exiting S5");
                    state <= S1;
                end

            end
        default:;
        endcase
    end

endmodule

