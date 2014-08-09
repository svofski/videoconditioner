`timescale 100ps/10ps

//`define NORMALSYNC
//`define BKSYNC
`define VECTORSYNC

module simulation;

// 1 clock = 1/24e6
// line period = 64us, == 1536 clocks
// 

parameter STEP = 416;

parameter CLK = 24e6;

`ifdef VECTORSYNC
parameter HS_T = 10.7e-6;
`else
parameter HS_T = 4.7e-6;
`endif
parameter HS = CLK * HS_T;

parameter FPORCH_T = 1.65e-6;
parameter FPORCH = CLK * FPORCH_T;

parameter BPORCH_T = 5.7e-6;
parameter BPORCH = CLK * BPORCH_T;

parameter LINE_T = 64e-6;
parameter LINE = CLK * LINE_T;

parameter SSYNC_T = 2e-6;
parameter SSYNC = CLK * SSYNC_T;

parameter LSYNC_T = 30e-6;
parameter LSYNC = CLK * LSYNC_T;

parameter VSYNC_T = 192e-6;
parameter VSYNC = CLK * VSYNC_T;

parameter EQP_T = 22e-6;
parameter EQP = CLK * EQP_T;

parameter BLACK = 12;

`ifdef VECTORSYNC
parameter VSYNC_LONG_N = CLK * 28e-6;
`endif

reg clk;
integer line;
integer pixel;
integer glob;

reg [5:0] cvbs;
reg hsync, vsync;
    initial begin
        $dumpfile("syncdetect.vcd");
        $dumpvars(0, simulation);
    end

  // Generate master clock
  initial begin
    clk = 1'b1;
    pixel = 600;
    glob = EQP/3;
    line = 319;
    forever #(STEP/2) clk = ~clk;
  end

  initial begin
    $display("Simulation parameters:");
    $display("Clock=%d", CLK);
    $display("Line period = %dus (%d clocks)", LINE_T*1e6, LINE);
    $display("Front porch time=%dus (%d clocks)", FPORCH_T*1e6, FPORCH);
    $display("HSYNC time=%dus (%d clocks)", HS_T*1e6, HS);
    $display("Back porch time=%dus (%d clocks)", BPORCH_T*1e6, BPORCH);
  end

reg [15:0] floor_r = 0;
wire [5:0] floor = floor_r[15:12];

always @(posedge clk) begin
    pixel <= pixel + 1;
    if (pixel == LINE) begin
        pixel <= 0;
        if (line < 321)
            line <= line + 1;
        else 
            line <= 0;
        $display("Line %d", line);
    end
`ifdef VECTORSYNC
    if (line > 22 && line < 25) begin
        glob <= 0;
        if (floor_r > 0) 
            floor_r <= floor_r - 6;
        if (pixel < FPORCH) 
            cvbs <= floor + BLACK;
        else if (pixel < FPORCH + HS) 
            cvbs <= floor;
        else if (pixel < FPORCH + HS + BPORCH)
            cvbs <= floor + BLACK;
        else 
            cvbs <= floor + BLACK;
    end
    else if (line >= 25) begin
        glob <= 0;
        if (floor_r > 0) 
            floor_r <= floor_r - 6;
        if (pixel < FPORCH) 
            cvbs <= floor + BLACK;
        else if (pixel < FPORCH + HS) 
            cvbs <= floor;
        else if (pixel < FPORCH + HS + BPORCH)
            cvbs <= floor + BLACK;
        else 
            cvbs <= 15 + pixel[3:0];
    end 
    else begin
        glob <= glob + 1;
        if (glob < CLK * 6 * 64e-6)
            floor_r <= floor_r + 2;
        else if (glob < CLK * 20 * 64e-6)
            floor_r <= floor_r + 0;

        if (pixel < VSYNC_LONG_N)
            cvbs <= floor;
        else 
            cvbs <= floor + BLACK;
    end
`endif
`ifdef BKSYNC
    if (line > 2) begin
        glob <= 0;
        // these would be end of frame lines
        if (pixel < FPORCH) 
            cvbs <= BLACK;
        else if (pixel < FPORCH + HS) 
            cvbs <= 0;
        else if (pixel < FPORCH + HS + BPORCH)
            cvbs <= BLACK;
        else 
            cvbs <= 15 + pixel[3:0];
    end
    else begin
        glob <= glob + 1;
        if (glob % EQP < SSYNC)
            cvbs <= BLACK;
        else 
            cvbs <= 0;
    end
`endif
`ifdef NORMALSYNC
    if (line > 5) begin
        // these would be end of frame lines
        if (pixel < FPORCH) 
            cvbs <= BLACK;
        else if (pixel < FPORCH + HS) 
            cvbs <= 0;
        else if (pixel < FPORCH + HS + BPORCH)
            cvbs <= BLACK;
        else 
            cvbs <= 15 + pixel[3:0];
    end
    else if (line < 2) begin
        // line 0, 1: double LSYNC pulses
        if (pixel < LSYNC)
            cvbs <= 0;
        else if (pixel < LINE/2)
            cvbs <= BLACK;
        else if (pixel < LINE/2 + LSYNC)
            cvbs <= 0;
        else
            cvbs <= BLACK;
    end
    else if (line == 2) begin
        // line 2: LSYNC + SSYNC
        if (pixel < LSYNC)
            cvbs <= 0;
        else if (pixel < LINE/2)
            cvbs <= BLACK;
        else if (pixel < LINE/2 + SSYNC)
            cvbs <= 0;
        else
            cvbs <= BLACK;
    end 
    else begin
        // line 3-5: SSYNC
        if (pixel < SSYNC)
            cvbs <= 0;
        else if (pixel < LINE/2)
            cvbs <= BLACK;
        else if (pixel < LINE/2 + SSYNC)
            cvbs <= 0;
        else
            cvbs <= BLACK;
    end
`endif
end

always @(posedge clk) begin
    if (line == 27) begin
        $display("Simulation terminated");
        $finish;
    end
end

wire det_hs;
wire det_vs;
wire [5:0] det_black;
wire det_porch;

reg det_ce;
initial begin
    det_ce = 0;
    #500 det_ce = 1;
end


syncdetect detector(.clk(clk), .ce(det_ce), .cvbs(cvbs), .hsync(det_hs), .vsync(det_vs), .blacklevel(det_black), .porch(det_porch));

wire xsync = ~(det_hs ^ det_vs);

endmodule
