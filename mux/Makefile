all:
#	iverilog -o test_mux_2to1 test_mux_2to1.v
#	iverilog -o test_mux_4to1 test_mux_4to1.v
	iverilog -o test_demux_1to2 test_demux_1to2.v

run:
#	./test_mux_2to1
#	./test_mux_4to1
	./test_demux_1to2
waveform:
	gtkwave test_mux_2to1.vcp

clean:
	rm -f test_mux_4to1
	rm -f test_mux_2to1
	rm -f test_demux_1to2
	rm -f *.vcd
