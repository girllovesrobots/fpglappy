onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib start_screen_opt

do {wave.do}

view wave
view structure
view signals

do {start_screen.udo}

run -all

quit -force
