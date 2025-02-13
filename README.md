# EECS31_Examples

This repository includes two sample Verilog projects: Full-adder and MUX/DEMUX.

## Dependency
`iverilog`

### How to install the dependency on Linux
```
sudo apt install iverilog
```
### How to install the dependency on MAC
```
brew install iverilog
```
* You must have Homebrew to use the command above

## How to compile and run a DEMUX simluation
```
> cd mux
> Make
> Make run
```
## How to compile and run a full adder simluation
```
> cd full_adder
> Make
> Make run
```

## How to check the simluation results
Open generated ".vcd" file using a proper program. 
* **Recommended program for Linux:** gtkwave
* **Recommended program for Mac:** VSCode with Waveform viewer extension (e.g., WaveTrace)
