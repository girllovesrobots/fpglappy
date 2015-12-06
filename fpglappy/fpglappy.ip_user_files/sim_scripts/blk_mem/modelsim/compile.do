vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"./../../../../fpglappy.srcs/sources_1/ip/blk_mem/blk_mem_sim_netlist.v" \


vlog -work xil_defaultlib "glbl.v"

quit -f

