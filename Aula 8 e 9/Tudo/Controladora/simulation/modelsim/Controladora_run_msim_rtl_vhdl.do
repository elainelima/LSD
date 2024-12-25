transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Aula 8 e 9 v2/Tudo/Controladora/Controladora.vhd}

vcom -93 -work work {C:/Aula 8 e 9 v2/Tudo/Controladora/tb_controladora.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_controladora

add wave *
view structure
view signals
run 50 ns
