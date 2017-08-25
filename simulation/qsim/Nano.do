onerror {quit -f}
vlib work
vlog -work work Top.vo
vlog -work work Nano.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bancoRegistradores_vlg_vec_tst
vcd file -direction Nano.msim.vcd
vcd add -internal bancoRegistradores_vlg_vec_tst/*
vcd add -internal bancoRegistradores_vlg_vec_tst/i1/*
add wave /*
run -all
