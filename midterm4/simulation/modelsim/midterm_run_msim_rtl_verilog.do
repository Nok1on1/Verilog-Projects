transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/midterm4 {C:/Verilog-Projects/midterm4/counter8bit.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/midterm4 {C:/Verilog-Projects/midterm4/tb.v}

