`default_nettype none

module syncdetect(input clk, input ce, input [5:0] cvbs, output reg hsync, output reg vsync, output [5:0] blacklevel, output reg error, output reg porch, output [5:0] threshold);
//parameter THRESH = 12;
//parameter FILLCOUNT = 18; == 9*2 for BK-0010
parameter FILLCOUNT = 23 * 2; // vector-06c
parameter S1 = 0;
parameter S2 = 1;
parameter S2A = 11;
parameter S3 = 2;
parameter S4 = 3;
parameter S5 = 4;
parameter S6 = 5;

parameter CLK = 24e6;
parameter HSYNC_TIME = CLK * 4.7e-6;
//parameter HSYNC_TIME = CLK * 8.7e-6; // HSYNC pulse length =  10.7uS on real Vector-06C
//parameter BACKPORCH_TIME = CLK * 5.7e-6;
parameter BACKPORCH_TIME = 128;
parameter REST_TIME = CLK * 64e-6 - (HSYNC_TIME + BACKPORCH_TIME);

//parameter VSYNC_IN_TIME = CLK * 27e-6; // Vector-06C VSYNC zero time
parameter VSYNC_IN_TIME = HSYNC_TIME * 3;

parameter VSYNC_LONG = CLK * 1480e-6; //6*64e-6;
//parameter VSYNC_LONG = CLK * 6*64e-6 - VSYNC_IN_TIME - 256;

assign threshold = r_threshold;
assign blacklevel = r_blacklevel;

reg [5:0] r_threshold = 10;
reg [5:0] r_blacklevel = 12;

reg [3:0] state = S1;
reg [15:0] timerA;
reg [15:0] counterA;
reg [15:0] accu;

reg hsync_int, vsync_int;
always @*
    //hsync <= ~(thresh_bitcount == 8);
    hsync <= hsync_int;
    
always @*
    vsync <= vsync_int;
    
wire sig_raw = cvbs > r_threshold;

//wire negative_edge = more_zeroes;
reg  filtered_samp = 0;


parameter INT_LEN = 16;
reg [7:0] thresh_bitcount = 0;
wire more_zeroes = (thresh_bitcount < INT_LEN/2);
wire more_ones   = (thresh_bitcount >= INT_LEN/2);

reg [INT_LEN-1:0] threshaccu = 0;

initial begin
    thresh_bitcount = 0;
    threshaccu = 0;
end

always @(posedge clk)
    if (ce) begin
        thresh_bitcount <= thresh_bitcount + sig_raw - threshaccu[INT_LEN-1];
        threshaccu <= {threshaccu[INT_LEN-2:0], sig_raw};
    end
    

reg [7:0] vscount = 0;

integer hsync_time = HSYNC_TIME;
integer vsync_in_time = VSYNC_IN_TIME;
    
always @(posedge clk) 
    if (ce) begin
        error <= 1'b0;
        if (timerA > 0) timerA <= timerA - 1'b1;
        counterA <= counterA + 1'b1;
        
        case (state)
        S1: begin
                vsync_int <= 1;
                hsync_int <= 1;
                // waiting
                if (more_zeroes) begin
                    $display("S1: detected start of sync pulse");
                    hsync_int <= 0;
                    state <= S2;
                    counterA <= 0;
                    accu <= 0;
                end
            end
        S2: begin
                //$display("counterA=%d hsync_time=%d", counterA, hsync_time);
                accu <= accu + cvbs;
                if (counterA == 128) begin
                    r_blacklevel <= (accu >> 7) + 12;
                    r_threshold <= (accu >> 7) + 8;
                end
                
                if (hsync_int == 0 && counterA > hsync_time)
                begin
                    $display("S2: hsync_int <= 1 at counterA=%d", counterA);
                    hsync_int <= 1;
                end
                    
                if (more_ones) begin
                    //r_blacklevel <= cvbs;
                    //r_threshold <= cvbs >> 1;
                    counterA <= 0;
                    $display("S2: sync pulse has ended counterA=%d vsync threshold time=%d", counterA, vsync_in_time);
                    if (counterA > vsync_in_time) begin
                        vsync_int <= 0;
                        timerA <= VSYNC_LONG;
                        state <= S3;
                    end
                    else
                        state <= S1;
                end
            end
        S3: begin
                if (timerA == 0) begin
                    vsync_int <= 1;
                    counterA <= 0;
                    state <= S1;
                end
            end
        default:;
        endcase
    end

endmodule

