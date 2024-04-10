transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/midterm3 {C:/Verilog-Projects/midterm3/encoder.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/midterm3 {C:/Verilog-Projects/midterm3/tb.v}

