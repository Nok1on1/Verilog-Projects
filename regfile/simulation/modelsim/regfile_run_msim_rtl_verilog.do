transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/regfile {C:/Verilog-Projects/regfile/registerfile.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/regfile {C:/Verilog-Projects/regfile/testbench.v}

