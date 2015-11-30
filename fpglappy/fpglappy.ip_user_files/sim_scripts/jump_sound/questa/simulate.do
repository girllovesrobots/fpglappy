onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib jump_sound_opt

do {wave.do}

view wave
view structure
view signals

do {jump_sound.udo}

run -all

quit -force
