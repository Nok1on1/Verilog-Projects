transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/4bitparallel-in1 {C:/Verilog-Projects/4bitparallel-in1/shiftregister.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/4bitparallel-in1 {C:/Verilog-Projects/4bitparallel-in1/tb.v}

