transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/programcounter {C:/Verilog-Projects/programcounter/ProgramCounter.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/programcounter {C:/Verilog-Projects/programcounter/tb.v}

