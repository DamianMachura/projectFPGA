onerror {exit -code 1}
vlib work
vcom -work work projekt2.vho
vcom -work work output_files/Waveform.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Range_Sensor_vhd_vec_tst
vcd file -direction projekt2.msim.vcd
vcd add -internal Range_Sensor_vhd_vec_tst/*
vcd add -internal Range_Sensor_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
