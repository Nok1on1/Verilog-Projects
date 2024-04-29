transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/shifter {C:/Verilog-Projects/shifter/shifter.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/shifter {C:/Verilog-Projects/shifter/tb.v}

