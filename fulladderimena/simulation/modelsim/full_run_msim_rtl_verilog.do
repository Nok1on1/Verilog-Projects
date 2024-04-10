transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/fulladderimena {C:/Verilog-Projects/fulladderimena/fulladder.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/fulladderimena {C:/Verilog-Projects/fulladderimena/carryadder.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/fulladderimena {C:/Verilog-Projects/fulladderimena/tb.v}

