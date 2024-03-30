transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/20.1/quartus/bin64/Projects/clockdivisor {C:/intelFPGA_lite/20.1/quartus/bin64/Projects/clockdivisor/clkdivisor.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/20.1/quartus/bin64/Projects/clockdivisor {C:/intelFPGA_lite/20.1/quartus/bin64/Projects/clockdivisor/clkdivisor_tb.v}

