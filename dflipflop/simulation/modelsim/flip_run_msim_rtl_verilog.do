transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/dflipflop {C:/Verilog-Projects/dflipflop/baseline_c5gx.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/dflipflop {C:/Verilog-Projects/dflipflop/Dflipflop.v}

