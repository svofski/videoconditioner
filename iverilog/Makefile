IVERILOG=iverilog
VVP=vvp
GTKWAVE=gtkwave

SRC=simulation.v syncdetect.v

all:	syncdetect.vcd

wave:	syncdetect.vcd
	$(GTKWAVE) $^ &

syncdetect.vcd:	syncdetect.vvp
	$(VVP) $^

syncdetect.vvp:	$(SRC)
	$(IVERILOG) -o $@ $^