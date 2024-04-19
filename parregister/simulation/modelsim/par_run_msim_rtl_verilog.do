transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/parregister {C:/Verilog-Projects/parregister/parametrizable_register.v}
vlog -vlog01compat -work work +incdir+C:/Verilog-Projects/parregister {C:/Verilog-Projects/parregister/tb.v}

