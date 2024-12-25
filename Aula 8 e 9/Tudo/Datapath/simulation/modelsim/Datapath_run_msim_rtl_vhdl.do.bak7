transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Aula 8/Tudo/RegW/RegW/RegW.vhd}
vcom -93 -work work {C:/Aula 8/Tudo/Reg_MA/mean_4_clocks/mean_4_clocks.vhd}
vcom -93 -work work {C:/Aula 8/Tudo/Comparador/Comparador/comparador.vhd}
vcom -93 -work work {C:/Aula 8/Tudo/BCD_7seg/BCD_7seg/BCD_7seg.vhd}
vcom -93 -work work {C:/Aula 8/Tudo/Datapath/Datapath.vhd}

vcom -93 -work work {C:/Aula 8/Tudo/Datapath/tb_datapath.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_datapath

add wave *
view structure
view signals
run 100 ns
