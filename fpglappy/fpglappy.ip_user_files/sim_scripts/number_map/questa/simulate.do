onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib number_map_opt

do {wave.do}

view wave
view structure
view signals

do {number_map.udo}

run -all

quit -force
