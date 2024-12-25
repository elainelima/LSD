transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Datapath.vho}

vcom -93 -work work {C:/Aula 8/Tudo/Datapath/tb_datapath.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=Datapath_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  tb_datapath

add wave *
view structure
view signals
run 1000 ms
