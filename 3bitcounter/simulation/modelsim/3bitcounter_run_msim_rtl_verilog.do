transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Projects/3bitcounter {C:/Projects/3bitcounter/counter3bit.v}
vlog -vlog01compat -work work +incdir+C:/Projects/3bitcounter {C:/Projects/3bitcounter/counter3bit_tb.v}
