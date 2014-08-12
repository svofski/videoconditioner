`default_nettype none

module adc(input clk, input lvds, output feedback, output reg [RESOLUTION - 1: 0] filtered);
parameter RESOLUTION;

wire [RESOLUTION - 1: 0] pcm;

feedbacker feedbacker(.clk(clk), .lvds(lvds), .feedback(feedback));
averager #(.RESOLUTION(RESOLUTION), .FACTOR(110)) averager(.clk(clk), .pdm(feedback), .pcm(pcm));

wire [29:0] filtered_u;
wire filtered_valid;

reg[1:0] div4;
wire filter_ce = div4 == 0;
always @(posedge clk)
    div4 <= div4 + 1'b1;
    
`ifdef FILTER
filter lowpass(
    .clk(clk),
    .reset_n(1),
    .ast_sink_data(pcm),
    .ast_sink_valid(filter_ce),
    .ast_sink_error(2'b0),
    .ast_source_data(filtered_u),
    .ast_source_valid(filtered_valid)
);
`else
    assign filtered_u = adc1_val;
    assign filtered_valid = filter_ce;
`endif

always @(posedge clk) 
    if (filtered_valid)
        filtered <= filtered_u;
endmodule

module feedbacker(input clk, input lvds, output reg feedback);
    always @(posedge clk) 
        feedback <= lvds;
endmodule

module averager(clk, pdm, pcm);
parameter RESOLUTION = 8;
parameter FACTOR = 16;
input clk;
input pdm;
output reg [RESOLUTION-1:0] pcm;

reg [FACTOR-1:0] buffer;
always @(posedge clk) begin
    pcm <= pcm + pdm - buffer[FACTOR-1];
    buffer <= {buffer[FACTOR-2:0], pdm};
end

endmodule
