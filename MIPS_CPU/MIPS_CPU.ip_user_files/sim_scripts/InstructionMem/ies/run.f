-makelib ies_lib/xpm -sv \
  "D:/Vitis/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Vitis/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../MIPS_CPU.gen/sources_1/ip/InstructionMem/sim/InstructionMem.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

