transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/barrelshifter {C:/Verilog-Projects/barrelshifter/barrel.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/barrelshifter {C:/Verilog-Projects/barrelshifter/tb.v}

