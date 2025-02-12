


all:
	iverilog -o test test.v

run:
	./test

waveform:
	gtkwave test.vcp

clean:
	rm -f test
	rm -f *.vcd
