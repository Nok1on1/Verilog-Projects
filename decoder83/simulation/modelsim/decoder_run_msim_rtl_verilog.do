transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/20.1/quartus/bin64/Projects/decoder83 {C:/intelFPGA_lite/20.1/quartus/bin64/Projects/decoder83/encoder_83.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/20.1/quartus/bin64/Projects/decoder83 {C:/intelFPGA_lite/20.1/quartus/bin64/Projects/decoder83/encoder_83_tb.v}

