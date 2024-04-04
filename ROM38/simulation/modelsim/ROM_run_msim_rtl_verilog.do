transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Projects/ROM38 {C:/Projects/ROM38/ROM.v}
vlog -vlog01compat -work work +incdir+C:/Projects/ROM38 {C:/Projects/ROM38/ROM_tb.v}

