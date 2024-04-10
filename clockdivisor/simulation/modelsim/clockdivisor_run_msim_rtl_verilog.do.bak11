transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/clockdivisor {C:/Verilog-Projects/clockdivisor/clkdivisor.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/clockdivisor {C:/Verilog-Projects/clockdivisor/clkdivisor_tb.v}

