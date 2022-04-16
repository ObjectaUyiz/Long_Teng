set_property SRC_FILE_INFO {cfile:D:/Long_Teng/Long_Teng/MIPS_CPU/MIPS_CPU.srcs/constrs_1/new/test.xdc rfile:../../../../../MIPS_CPU.srcs/constrs_1/new/test.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 30.000 -name MainClk -waveform {0.000 15.000} -add [get_ports clk]
