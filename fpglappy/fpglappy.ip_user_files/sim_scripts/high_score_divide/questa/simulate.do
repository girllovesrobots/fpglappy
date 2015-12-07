onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib high_score_divide_opt

do {wave.do}

view wave
view structure
view signals

do {high_score_divide.udo}

run -all

quit -force
