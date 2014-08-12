`default_nettype none
`define FILTER


module top(
        input [1:0]     CLOCK_24,
        input [1:0]     CLOCK_27,
        input           clk50mhz,
/*        
        input [3:0]     KEY,
        output [9:0]    LEDr,
        output [7:0]    LEDg,
*/
        input [9:3]     SW,
        output [6:0]    HEX0,
        output [6:0]    HEX1,
        output [6:0]    HEX2,
        output [6:0]    HEX3,
/*
        /////// VGA
        output          VGA_HS,
        output          VGA_VS,
*/        
        output  [3:0]   VGA_R,
        output  [3:0]   VGA_G,
        output  [3:0]   VGA_B,
/*        
        output          UART_TXD,
        input           UART_RXD,
*/
        output [12:0]   GPIO_0,
        output [7:0] sample_pin,
        output       sample_ce_pin,
        output [5:0] blacklevel_pin,

        output [3:0] ADCINT,
        input [3:0] LVDS
);


parameter RESOLUTION = 6;
parameter DAC_RESOLUTION = 6;

//assign GPIO_0 = 0;
//assign GPIO_1 = 0;

// PIN_D16 = 8 right from the top = ADCINT[0]
// PIN_C17 = 9 left from the top  = ADCINT[1]
// PIN_C18 = 9 right from the top = ADCINT[2]
// PIN_C9 = 10 left from the top =  ADCINT[3]


// from the bottom
// LVDS0 = 5l - 7r
// LVDS1 = 3l - 3r
// LVDS2 = 2l - 2r
// LVDS3 = 1l - 1r

reg [12:0] divctr;
always @(posedge CLOCK_24[0])
    divctr <= divctr + 1'b1;
//wire sample_ce = 1'b1;//divctr[0] == 0;
wire sample_ce = 1'b1;//divctr[0] == 0;

assign sample_pin = filtered_green;
assign sample_ce_pin = CLOCK_24[0]; 

wire clk_adc;
wire clk_out;
wire clk_palgen;

pll pll1(.inclk0(CLOCK_24[0]), .c0(clk_adc), .c1(clk_palgen));
outpll pll2(.inclk0(clk50mhz), .c0(clk_out));

// Derive clock for PAL subcarrier: 4x 4.43361875
`define PHACC_WIDTH 32
`define PHACC_DELTA 793426981

reg [`PHACC_WIDTH-1:0] pal_phase;
wire [`PHACC_WIDTH-1:0] pal_phase_next;
assign pal_phase_next = pal_phase + `PHACC_DELTA;
reg palclkreg;
wire clkpalFSC;
always @(posedge clk_adc) begin
    pal_phase <= pal_phase_next;
end

ayclkdrv clkbufpalfsc(pal_phase[`PHACC_WIDTH-1], clkpalFSC);


wire [RESOLUTION-1:0] filtered_sync;
wire [RESOLUTION-1:0] filtered_red;
wire [RESOLUTION-1:0] filtered_green;
wire [RESOLUTION-1:0] filtered_blue;
adc #(.RESOLUTION(RESOLUTION)) adc_sync (.clk(clk_adc), .lvds(LVDS[3]), .feedback(ADCINT[3]), .filtered(filtered_sync));
adc #(.RESOLUTION(RESOLUTION)) adc_red  (.clk(clk_adc), .lvds(LVDS[2]), .feedback(ADCINT[2]), .filtered(filtered_red));
adc #(.RESOLUTION(RESOLUTION)) adc_green(.clk(clk_adc), .lvds(LVDS[1]), .feedback(ADCINT[1]), .filtered(filtered_green));
adc #(.RESOLUTION(RESOLUTION)) adc_blue (.clk(clk_adc), .lvds(LVDS[0]), .feedback(ADCINT[0]), .filtered(filtered_blue));

wire hsync, vsync;
wire [5:0] blacklevel;
wire [5:0] threshold;
assign blacklevel_pin = blacklevel;
wire porch;
wire [9:0] line_number;
syncdetect syncdetect1(.clk(CLOCK_24[0]), .ce(1), .cvbs(filtered_sync), .hsync(hsync), .vsync(vsync), .blacklevel(blacklevel), .line_number(line_number), .porch(porch), .threshold(threshold));
    
assign GPIO_0[0] = hsync;
assign GPIO_0[1] = vsync;
assign GPIO_0[2] = xsync;

wire xsync = ~(hsync ^ vsync);
        
reg[RESOLUTION - 1:0] schmiltered;
always @(posedge CLOCK_24[0])
    if (SW[9])
    // cookie cut sync + limited signal    
    schmiltered <= ~xsync ? 0 : porch ? blacklevel :  filtered_sync < blacklevel ? blacklevel : filtered_sync > blacklevel + 24 ? blacklevel + 24 : filtered_sync;
    // cookie cut sync, no limiter
    //schmiltered <= ~xsync ? 0 : filtered;
    else
    // plain filtered
    schmiltered <= filtered_sync;

reg [RESOLUTION-1:0] sample;
always @(posedge CLOCK_24[0])
    if (sample_ce)
        sample <= schmiltered;

reg [DAC_RESOLUTION:0] ydac;
reg [DAC_RESOLUTION:0] cdac;
always @(posedge clk_out)         // sample[...]
begin
    ydac <= ydac[DAC_RESOLUTION-1:0] + tv_luma[RESOLUTION-1:RESOLUTION-DAC_RESOLUTION]; 
    cdac <= cdac[DAC_RESOLUTION-1:0] + tv_chroma[RESOLUTION-1:RESOLUTION-DAC_RESOLUTION]; 
end

wire [3:0] four = {4{ydac[DAC_RESOLUTION]}};
//wire [3:0] four = {4{ADCINT[3]}};

wire [3:0] nopwm = sample[RESOLUTION-1:RESOLUTION-4];


reg [5:0] babor;
always @(posedge CLOCK_24[0])
    if (divctr[0] == 0)
        //if (babor < 46)
            babor <= babor + 1;
        //else    
        //    babor <= 0;

wire [5:0] sin;        
sintable sintable(.address(babor), .clock(CLOCK_24[0]), .q(sin));
                
wire [5:0] vo = babor;
wire [11:0] dacval;
dactable dactaklakpak(.address(tv_cvbs), .clock(clkpalFSC), .q(dacval));

//reg [3:0] div16;
//always @(posedge clkpalFSC)
//    div16 <= div16 + 1;
//assign dacval = {12{div16[3]}};


assign VGA_R = dacval[3:0];
assign VGA_G = dacval[7:4];
assign VGA_B = dacval[11:8];

//assign VGA_R = four;
//assign VGA_G = four;
//assign VGA_B = four;

assign GPIO_0[10] = ydac[DAC_RESOLUTION];
assign GPIO_0[11] = cdac[DAC_RESOLUTION];


SEG7_LUT_4 seg7display(HEX0, HEX1, HEX2, HEX3, {2'b0, threshold, 2'b0, blacklevel});


//wire [5:0] grey = sample > blacklevel ? sample - blacklevel : 0;


// 24 seems to be the limit before overflow

reg [6:0] grey;
reg [6:0] red;
reg [6:0] green;
reg [6:0] blue;
/*
always @(posedge CLOCK_24[0])
        if (porch || ~hsync || line_number < 40)// || grey == 16)
        begin
            grey <= 0;
            red <= 0;
            green <= 15;
            blue <= 16;
        end
        else begin
            if (grey[6:3] == 15) grey <= 0; else grey <= grey + 1;//line_number;
          //if (red[6:3] == 15)  red <= 0;  else red <= red + 1;//line_number;
            //if (green == 0)green <= 15<<3;  else green <= green - 1;//line_number;
            red <= line_number;
            green <= line_number;
            blue <= line_number;
            //green <= line_number;
            //if (blue[6:2] == 16) blue <= 0; else blue <= blue + 1;//line_number;
        end
*/

always @*
begin
    red <=  16 - (filtered_red >> 2);
    green <= 16 - (filtered_green >> 2);
    blue <= 16 - (filtered_blue >> 2);
end

wire [5:0] tv_luma;
wire [5:0] tv_chroma;
wire [5:0] tv_cvbs;
video video1(
    .clk24(CLOCK_24[0]),
    .clk16fsc(clkpalFSC),
    .tv_mode(2'b00),
    .tv_hs_i(hsync),
    .tv_vs_i(vsync),
    .tv_porch_i(porch),
    .tv_luma_o(tv_luma),
    .tv_chroma_o(tv_chroma),
    .tv_cvbs_o(tv_cvbs),

    .tv_red_i(SW[8] ? red : 0),
    .tv_green_i(SW[7] ? green : 0),
    .tv_blue_i(SW[6] ? blue : 0)
);


endmodule

