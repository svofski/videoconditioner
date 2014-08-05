
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
        output [5:0] sample_pin,
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

//reg [3:0] ctr;
//always @(posedge CLOCK_24[0])
//begin
//    ctr <= ctr + 1'b1;
//end

//assign ADCINT = ctr;
//assign LVDS = ctr;

reg [12:0] divctr;
always @(posedge CLOCK_24[0])
    divctr <= divctr + 1'b1;
//wire sample_ce = 1'b1;//divctr[0] == 0;
wire sample_ce = 1'b1;//divctr[0] == 0;

assign sample_pin = sample;
assign sample_ce_pin = CLOCK_24[0]; 

wire clk_adc;
wire clkx = clk_adc;// = clk_adc | clk_adc180;
wire clk_out;

pll(.inclk0(CLOCK_24[0]), .c0(clk_adc));//, .c1(clk_adc180));
//assign clk_out = clk_adc;
outpll(.inclk0(clk50mhz), .c0(clk_out), .c1(clk100));

wire [RESOLUTION-1:0] adc1_val;

sigmadelta adc1(.clk(clkx), .lvds(LVDS[3]), .feedback(ADCINT[3]));

// factor = 80 good for filter + limiter = 24
accumulator #(.RESOLUTION(RESOLUTION), .FACTOR(110)) cie1(.clk(clkx), .stream(ADCINT[3]), .value(adc1_val));

reg [29:0] filtered;
wire [29:0] filtered_u;
wire filtered_valid;

reg[1:0] div4;
wire filter_ce = div4 == 0;
always @(posedge clk_adc)
    div4 <= div4 + 1'b1;
    
`ifdef FILTER
filter (
    .clk(clk_adc),
    .reset_n(1),
    .ast_sink_data(adc1_val),
    .ast_sink_valid(filter_ce),
    .ast_sink_error(2'b0),
    .ast_source_data(filtered_u),
    .ast_source_valid(filtered_valid)
);
`else
    assign filtered_u = adc1_val;
    assign filtered_valid = filter_ce;
`endif

always @(posedge clk_adc) 
    if (filtered_valid)
        filtered <= filtered_u;

wire hsync, vsync;
wire [5:0] blacklevel;
wire [5:0] threshold;
assign blacklevel_pin = blacklevel;
wire error;
wire porch;
syncdetect(.clk(CLOCK_24[0]), .ce(1), .cvbs(filtered), .hsync(hsync), .vsync(vsync), .blacklevel(blacklevel), .error(error), .porch(porch), .threshold(threshold));
    
assign GPIO_0[0] = hsync;
assign GPIO_0[1] = vsync;
assign GPIO_0[2] = xsync;

wire xsync = ~(hsync ^ vsync);
        
reg[RESOLUTION - 1:0] schmiltered;
always @(posedge CLOCK_24[0])
    if (SW[9])
    // cookie cut sync + limited signal    
    schmiltered <= ~xsync ? 0 : porch ? blacklevel :  filtered < blacklevel ? blacklevel : filtered > blacklevel + 32 ? blacklevel + 32 : filtered;
    // cookie cut sync, no limiter
    //schmiltered <= ~xsync ? 0 : filtered;
    else
    // plain filtered
    schmiltered <= filtered;

//parameter FIRLSB = 16;
parameter FIRLSB = 0;

reg [RESOLUTION-1:0] sample;
always @(posedge CLOCK_24[0])
    if (sample_ce)
        sample <= 
            schmiltered;
            //filtered[RESOLUTION - 1 + FIRLSB: FIRLSB];
            //adc1_val;

reg [DAC_RESOLUTION:0] dac;
always @(posedge clk_out)
    dac <= dac[DAC_RESOLUTION-1:0] + sample[RESOLUTION-1:RESOLUTION-DAC_RESOLUTION];

    
    
wire [3:0] four = {4{dac[DAC_RESOLUTION]}};
//wire [3:0] four = {4{ADCINT[3]}};


wire [3:0] nopwm = sample[RESOLUTION-1:RESOLUTION-4];


reg [5:0] babor;
always @(posedge CLOCK_24[0])
    if (divctr[0] == 0)
        babor <= babor + 1;

wire [5:0] sin;        
sintable sintable(.address(babor), .clock(CLOCK_24[0]), .q(sin));
        
        
wire [5:0] vo = sample;

assign VGA_R = {vo[5:2]};
assign VGA_G = {vo[5:2]};
assign VGA_B[0] = vo[1];
assign VGA_B[1] = vo[0] ? 1'bz : 1'b0;
//assign VGA_B[2] = vo[5] ? 1'bz: (vo[0] ? 1'bz : 1'b0);
assign VGA_B[2] = 1'bz;
assign VGA_B[3] = 1'bz;
//assign VGA_B = {3'bz, vo[1]};
assign GPIO_0[10] = four[0];
assign GPIO_0[11] = 1'b0;


SEG7_LUT_4 seg7display(HEX0, HEX1, HEX2, HEX3, {2'b0, threshold, 2'b0, blacklevel});


endmodule

module sigmadelta(input clk, input lvds, output reg feedback);
    always @(posedge clk) 
        feedback <= lvds;
endmodule

module accumulator(clk, stream, value);
parameter RESOLUTION = 8;
parameter FACTOR = 16;
input clk;
input stream;
output reg [RESOLUTION-1:0] value;

reg [FACTOR-1:0] buffer;
always @(posedge clk) begin
    value <= value + stream - buffer[FACTOR-1];
    buffer <= {buffer[FACTOR-2:0], stream};
end

endmodule
