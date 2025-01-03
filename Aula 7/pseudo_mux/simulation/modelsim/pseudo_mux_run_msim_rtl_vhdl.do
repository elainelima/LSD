transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Hermes/PN2/Aula 7/pseudo_mux/pseudo_mux.vhd}

vcom -93 -work work {D:/Hermes/PN2/Aula 7/pseudo_mux/tb_pseudo_mux.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_pseudo_mux

add wave *
view structure
view signals
run 100 ns
