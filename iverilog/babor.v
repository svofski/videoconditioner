module babor;

parameter STEP = 2;
reg mreset_n, m_clock;

  // Generate reset
  initial begin
    $display("Fork");
    mreset_n = 1'b0;
    #(STEP*4) mreset_n = 1'b1;
  end

  // Generate master clock
  initial begin
    m_clock = 1'b1;
    forever #(STEP/2) m_clock = ~m_clock;
  end
  
  initial begin
    $display("BM1 simulation begins");
    
    #(STEP*28000/*80000*/) begin
        $display("\nend by step limit");
        $finish;
    end
  end



reg [7:0] valor;
wire [7:0] limited;

limiter limitr(valor, limited);

initial valor = 0;

always @(posedge m_clock) begin
    valor <= valor + 1'b1;
    $display("unlimited = %02x limited = %02x", valor, limited);
end

endmodule



module limiter(value, limited);
input signed [7:0] value;
output [7:0] limited;

assign limited = value < 0 ? 0 : value;

endmodule
