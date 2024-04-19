transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/3bitcounter {C:/Verilog-Projects/3bitcounter/baseline_c5gx.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/3bitcounter {C:/Verilog-Projects/3bitcounter/counter3bit.v}

