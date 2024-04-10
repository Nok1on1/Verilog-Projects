transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/8bitadder {C:/Verilog-Projects/8bitadder/adder8bit.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/8bitadder {C:/Verilog-Projects/8bitadder/tb.v}

