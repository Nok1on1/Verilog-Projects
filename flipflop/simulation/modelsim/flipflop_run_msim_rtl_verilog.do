transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/flipflop {C:/Verilog-Projects/flipflop/tb.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/flipflop {C:/Verilog-Projects/flipflop/Dflipflop.v}

