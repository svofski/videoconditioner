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
parameter BACKPORCH_TIME = CLK * 5.7e-6;
parameter REST_TIME = CLK * 64e-6 - (HSYNC_TIME + BACKPORCH_TIME);

parameter LINE_TIME = CLK * 64e-6;

//parameter VSYNC_IN_TIME = CLK * 27e-6; // Vector-06C VSYNC zero time
parameter VSYNC_IN_TIME = HSYNC_TIME * 3;

//parameter VSYNC_LONG = CLK * 1490e-6; // this matches Vector-06C VSYNC but it's awfully long
parameter VSYNC_LONG = CLK * 1490e-6 / 2;
parameter VSYNC_DEADTIME = CLK * 1490e-6 / 2;

assign threshold = r_threshold;
assign blacklevel = r_blacklevel;

reg [5:0] r_threshold = 10;
reg [5:0] r_blacklevel = 12;

reg [15:0] timerA;
reg [15:0] counterA;
reg [15:0] accu;

parameter HSYNC_DELAY = 32;
reg [HSYNC_DELAY-1:0] hsync_delay;
reg hsync_int = 1, vsync_int = 1;
always @(posedge clk) begin
    hsync_delay <= {hsync_delay[HSYNC_DELAY-2:0], hsync_int};
    hsync <= hsync_delay[HSYNC_DELAY-1];
    //hsync <= hsync_int;
end    
    
always @*
    vsync <= vsync_int;
    
wire sig_raw = cvbs > r_threshold;

parameter INT_LEN = 16;
reg [7:0] thresh_bitcount = 0;
wire more_zeroes = (thresh_bitcount < INT_LEN/2);

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
    
integer line_time = LINE_TIME;
integer line_minus_hsync = LINE_TIME - HSYNC_TIME;
integer line_minus_3x_hsync = LINE_TIME - HSYNC_TIME * 3;

reg [15:0] hsync_dll = 0;
reg more_zeroes_z = 0;
reg vsync_deadtime;
    
always @(posedge clk) 
    if (ce) begin
        error <= 1'b0;
        if (timerA > 0) timerA <= timerA - 1'b1;
        counterA <= counterA + 1'b1;
        accu <= accu + cvbs;

        if (hsync_dll == 0) 
            hsync_dll <= LINE_TIME;
        else             
            hsync_dll <= hsync_dll - 1'b1;

        if (hsync_dll == line_time) begin
            porch <= 0;
            hsync_int <= 0;
            accu <= 0;
        end
        else if (hsync_dll == line_minus_hsync) begin
            hsync_int <= 1;
            
            if (vsync_int && ~vsync_deadtime) begin
                timerA <= BACKPORCH_TIME;
                porch <= 1;
            end

            if (more_zeroes) begin
                r_blacklevel <= (accu >> 7) + 8;
                r_threshold <= (accu >> 7) + 8;
            end
        end

        if (porch && timerA == 0)
            porch <= 0;
        
        more_zeroes_z <= more_zeroes;
        if (~more_zeroes_z && more_zeroes) begin
            hsync_dll <= LINE_TIME;
        end

        if (vsync_int && more_zeroes && hsync_dll == line_minus_3x_hsync && ~vsync_deadtime) begin
            vsync_int <= 0;
            timerA <= VSYNC_LONG;
        end

        if (~vsync_int && timerA == 0 && ~vsync_deadtime) begin
            vsync_deadtime <= 1;
            timerA <= VSYNC_DEADTIME;
            vsync_int <= 1;
        end
        
        if (vsync_deadtime && timerA == 0) begin
            vsync_deadtime <= 0;
        end
        
    end

endmodule
