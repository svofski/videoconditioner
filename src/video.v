`default_nettype none

module video(
    clk24,             
    clk16fsc,

    tv_mode,
    tv_hs_i,
    tv_vs_i,
    tv_porch_i,
    tv_luma_o,
    tv_chroma_o,
    tv_cvbs_o,

    tv_red_i,
    tv_green_i,
    tv_blue_i,
);

parameter V_SYNC = 0;
parameter V_REF  = 11;

// input clocks
input           clk24;

// tv
input           clk16fsc;
input [1:0]     tv_mode;        // tv_mode[1] = alternating fields
                                // tv_mode[0] = tv mode

input           tv_hs_i, tv_vs_i, tv_porch_i;

output reg[7:0] tv_luma_o;  
output reg[7:0] tv_chroma_o;
output reg[7:0] tv_cvbs_o;

reg signed [7:0] tv_chroma;

input [5:0] tv_red_i;
input [5:0] tv_green_i;
input [5:0] tv_blue_i;

// tv

reg r_hs = 1;
reg tvvs_x = 1;
wire tv_blank = tv_porch_i || tv_pixel > 1500;
reg  tv_colorburst = 0;
reg [9:0] tv_line = 0;
reg [10:0] tv_pixel = 0;
wire tv_sync = ~(tv_hs_i ^ tv_vs_i);

always @(posedge clk24) begin  
    tvvs_x <= tv_vs_i;
    if (tvvs_x & ~tv_vs_i) begin
        tv_fieldctr <= tv_fieldctr + 1'b1;
        tv_line <= 0;
    end

    r_hs <= tv_hs_i;
    if (r_hs && ~tv_hs_i) begin
        tv_line <= tv_line + 1;
        tv_pixel <= 0;
    end
    else    
        tv_pixel <= tv_pixel + 1;
    tv_colorburst <= tv_pixel > 114 + 24 && tv_pixel < 114 + 24 + 65;
end

wire [5:0] truecolor_R = tv_red_i;
wire [5:0] truecolor_G = tv_green_i;
wire [5:0] truecolor_B = tv_blue_i;

                                             //   glitch source
wire [5:0] cvbs_unclamped = V_REF + tvY[4:0] - $signed(tv_chroma[4:1]); 
wire [5:0] cvbs_clamped = cvbs_unclamped[5:0];

wire [5:0] luma_unclamped = V_REF + tvY;
wire [4:0] luma_clamped = luma_unclamped[4:0];

wire [4:0] chroma_clamped;
chroma_offset chroma_offset1(.chroma_in(tv_chroma), .chroma_out(chroma_clamped));

//always @* tv_cvbs_o <= tv_blank + (tv_colorburst << 3);

always @*
    casex ({tv_sync,tv_colorburst,tv_blank})
    3'b0xx: tv_cvbs_o <= V_SYNC;
    3'b111: tv_cvbs_o <= V_REF + 3 - tv_sin[7:5]; 
    3'b101: tv_cvbs_o <= V_REF;
    default:tv_cvbs_o <= cvbs_clamped; 
    endcase
    
always @* 
    casex ({tv_sync,tv_blank})
    2'b0x: tv_luma_o <= V_SYNC;
    2'b11:  tv_luma_o <= V_REF;
    default:tv_luma_o <= luma_clamped; 
    endcase

always @* 
    casex ({tv_sync,tv_colorburst,tv_blank})
    3'b0xx: tv_chroma_o <= 16;
    3'b111: tv_chroma_o <= 12 + tv_sin[7:5]; 
    3'b101: tv_chroma_o <= 16;
    default:tv_chroma_o <= chroma_clamped; 
    endcase
    
    
always @* @(negedge clk16fsc)
    case ({tv_line[0]^pal_fieldalt,tv_phase0[3:0]})
    0:  tv_chroma <= tvUV[0];
    1:  tv_chroma <= tvUV[1];
    2:  tv_chroma <= tvUV[2];
    3:  tv_chroma <= tvUV[3];
    4:  tv_chroma <= tvUV[4];
    5:  tv_chroma <= tvUV[5];
    6:  tv_chroma <= tvUV[6];
    7:  tv_chroma <= tvUV[7];
    8:  tv_chroma <= tvUV[8];
    9:  tv_chroma <= tvUV[9];
    10: tv_chroma <= tvUV[10];
    11: tv_chroma <= tvUV[11];
    12: tv_chroma <= tvUV[12];
    13: tv_chroma <= tvUV[13];
    14: tv_chroma <= tvUV[14];
    15: tv_chroma <= tvUV[15];
    
    16: tv_chroma <= tvUW[0];
    17: tv_chroma <= tvUW[1];
    18: tv_chroma <= tvUW[2];
    19: tv_chroma <= tvUW[3];
    20: tv_chroma <= tvUW[4];
    21: tv_chroma <= tvUW[5];
    22: tv_chroma <= tvUW[6];
    23: tv_chroma <= tvUW[7];
    24: tv_chroma <= tvUW[8];
    25: tv_chroma <= tvUW[9];
    26: tv_chroma <= tvUW[10];
    27: tv_chroma <= tvUW[11];
    28: tv_chroma <= tvUW[12];
    29: tv_chroma <= tvUW[13];
    30: tv_chroma <= tvUW[14];
    31: tv_chroma <= tvUW[15];
    endcase

// These are the colourburst phases that correspond
// to 270 and 135 degrees (180+/-45) in alternating
// lines.
//
// In the reality of this encoder, they correspond to 
// 0 and 90 degrees.
reg [3:0] tv_phase  = 0;
reg [3:0] tv_phase0 = 1;

// Field counter is kept for alternating the phase between fields,
// which is necessary for correct colour detail (stripes for example).
// Some TV tuners do not like field alternation and this is why
// it is kept optional.
reg [2:0] tv_fieldctr;
wire pal_fieldalt = tv_mode[1] & tv_fieldctr[0];

always @(posedge clk16fsc) begin
    tv_phase <= tv_phase + 1;
    tv_phase0 <= tv_phase0 + 1;
end 

wire [8:0] tv_sin00;
wire [8:0] tv_sin90;
wire [8:0] tv_sin = tv_line[0]^pal_fieldalt ? tv_sin00 : tv_sin90;
sinrom sinA(tv_phase0[3:1], tv_sin00);
sinrom sinB(tv_phase[3:1], tv_sin90);

wire [7:0] tvY;
wire [13:0] tvY1;
wire [13:0] tvY2;
wire [13:0] tvY3;

wire signed [13:0] tvUV[15:0];
wire signed [13:0] tvUW[15:0];

// These coefficients are taken from eMSX. Scaling
// is done differently here, but only relative relation
// between the coefficients is really important.
// Perfect world's luminance,  Y = 0.299*R + 0.587*G + 0.114*B
assign tvY1 = 8'h18 * truecolor_R; 
assign tvY2 = 8'h2f * truecolor_G; 
assign tvY3 = 8'h09 * truecolor_B; 

wire [13:0] tvY_ = tvY1 + tvY2 + tvY3;
//assign tvY = tvY_[13:7]; 
assign tvY = tvY_[12:6];  // 12:6 is verified, 12:5 is too bright
                      

// UV encoding matrix
// Normally U = 0.492(B-Y) and V = 0.877(R-Y)
// So U and V are still functions of (R,G,B) and all coefficients can be precalculated
// For encoding, we can expand these expressions already multiplied by sin/cos: Usin(wt) +/- Vcos(wt)
//
// Since we can't keep colourburst phase at 180+/-45 degrees, the correction
// is made in coefficient calculation:
//     for V phase of +90, 5/8*2pi is subtracted
//     for V phase of -90, 3/8*2pi is subtracted
// This keeps phase relation between U,V and colourburst vectors even.
//
// See tools/pal.py for the program that derives these coefficients.
//


// phase = +90 degrees


uvsum #( +49, -41,  -7) uva(truecolor_R, truecolor_G, truecolor_B, tvUV[0]);
uvsum #( +40, -46,  +5) uvb(truecolor_R, truecolor_G, truecolor_B, tvUV[1]);
uvsum #( +26, -45, +18) uvc(truecolor_R, truecolor_G, truecolor_B, tvUV[2]);
uvsum #(  +7, -36, +29) uvd(truecolor_R, truecolor_G, truecolor_B, tvUV[3]);
uvsum #( -11, -22, +34) uve(truecolor_R, truecolor_G, truecolor_B, tvUV[4]);
uvsum #( -29,  -5, +35) uvf(truecolor_R, truecolor_G, truecolor_B, tvUV[5]);
uvsum #( -42, +12, +30) uvg(truecolor_R, truecolor_G, truecolor_B, tvUV[6]);
uvsum #( -49, +29, +20) uvh(truecolor_R, truecolor_G, truecolor_B, tvUV[7]);
uvsum #( -49, +41,  +7) uvi(truecolor_R, truecolor_G, truecolor_B, tvUV[8]);
uvsum #( -40, +46,  -5) uvj(truecolor_R, truecolor_G, truecolor_B, tvUV[9]);
uvsum #( -26, +45, -18) uvk(truecolor_R, truecolor_G, truecolor_B, tvUV[10]);
uvsum #(  -7, +36, -29) uvl(truecolor_R, truecolor_G, truecolor_B, tvUV[11]);
uvsum #( +11, +22, -34) uvm(truecolor_R, truecolor_G, truecolor_B, tvUV[12]);
uvsum #( +29,  +5, -35) uvn(truecolor_R, truecolor_G, truecolor_B, tvUV[13]);
uvsum #( +42, -12, -30) uvo(truecolor_R, truecolor_G, truecolor_B, tvUV[14]);
uvsum #( +49, -29, -20) uvp(truecolor_R, truecolor_G, truecolor_B, tvUV[15]);

uvsum #( -49, +41,  +7) uwa(truecolor_R, truecolor_G, truecolor_B, tvUW[0]);
uvsum #( -49, +29, +20) uwb(truecolor_R, truecolor_G, truecolor_B, tvUW[1]);
uvsum #( -42, +12, +30) uwc(truecolor_R, truecolor_G, truecolor_B, tvUW[2]);
uvsum #( -29,  -5, +35) uwd(truecolor_R, truecolor_G, truecolor_B, tvUW[3]);
uvsum #( -11, -22, +34) uwe(truecolor_R, truecolor_G, truecolor_B, tvUW[4]);
uvsum #(  +7, -36, +29) uwf(truecolor_R, truecolor_G, truecolor_B, tvUW[5]);
uvsum #( +26, -45, +18) uwg(truecolor_R, truecolor_G, truecolor_B, tvUW[6]);
uvsum #( +40, -46,  +5) uwh(truecolor_R, truecolor_G, truecolor_B, tvUW[7]);
uvsum #( +49, -41,  -7) uwi(truecolor_R, truecolor_G, truecolor_B, tvUW[8]);
uvsum #( +49, -29, -20) uwj(truecolor_R, truecolor_G, truecolor_B, tvUW[9]);
uvsum #( +42, -12, -30) uwk(truecolor_R, truecolor_G, truecolor_B, tvUW[10]);
uvsum #( +29,  +5, -35) uwl(truecolor_R, truecolor_G, truecolor_B, tvUW[11]);
uvsum #( +11, +22, -34) uwm(truecolor_R, truecolor_G, truecolor_B, tvUW[12]);
uvsum #(  -7, +36, -29) uwn(truecolor_R, truecolor_G, truecolor_B, tvUW[13]);
uvsum #( -26, +45, -18) uwo(truecolor_R, truecolor_G, truecolor_B, tvUW[14]);
uvsum #( -40, +46,  -5) uwp(truecolor_R, truecolor_G, truecolor_B, tvUW[15]);

endmodule

module uvsum(input signed [7:0] R, input signed [7:0] G, input signed [7:0] B, output signed [7:0] uvsum);
parameter signed c1 = 0, c2 = 0, c3 = 0;

wire signed [13:0] c01 = c1 * R;
wire signed [13:0] c02 = c2 * G;
wire signed [13:0] c03 = c3 * B;

wire signed [13:0] s = c01 + c02 + c03;
//assign uvsum = s[11:5];  // -- bright but overflows in a couple of places
//assign uvsum = s[12:6];  // -- dim but full coverage
assign uvsum = /* s[13:7] + */ s[12:6];

endmodule

module sinrom(input [2:0] adr, output reg [7:0] s); 
always @*
    case (adr)
    7:  s <= 218;
    6:  s <= 255;
    5:  s <= 255;
    4:  s <= 218;
    3:  s <= 91;
    2:  s <= 0;
    1:  s <= 0;
    0:  s <= 91;
    endcase
endmodule

module chroma_offset(input [7:0] chroma_in, output reg [4:0] chroma_out);
    always @*
        chroma_out <= 16 + chroma_in;
endmodule

////////////////////////////////////////////////////////////////////////////




// $Id: video.v 429 2014-07-21 21:16:33Z svofski@gmail.com $
