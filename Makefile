proj.vcd: test
	vvp test
test: proj.v lib.v tb_project.v
	iverilog -o test proj.v lib.v tb_project.v
