; Jason's Custom Ender 5 Pro Start Code
; Default gcode from Cura 5.0
M201 X500.00 Y500.00 Z100.00 E5000.00 ;Setup machine max acceleration
M203 X500.00 Y500.00 Z10.00 E50.00 ;Setup machine max feedrate
M204 P500.00 R1000.00 T500.00 ;Setup Print/Retract/Travel acceleration
M205 X8.00 Y8.00 Z0.40 E5.00 ;Setup Jerk
M220 S100 ;Reset Feedrate to 100%
M221 S100 ;Reset Flowrate to 100%

; Heat the bed and extruder at the same time
M117 Heating
M140 S{material_bed_temperature_layer_0} ; Set Bed temperature
M104 S170 ; Set Extruder temperature, start heating but hold before oozing
G28 ; Home all axes
G1 Z10.0 F3000 ; Move build plate away from extruder
M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature
M109 S{material_print_temperature_layer_0} ; Wait for Extruder temperature

; Purge extruder
M117 Purging
G92 E0 ; Reset Extruder
G1 F200 E10 ; Extrude 10mm of feed stock @200mm/min
G92 E0 ; Reset Extruder

; Slowly draw 2 lines
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed. 
G1 X0.1 Y20 Z0.28 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.28 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.28 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.28 F1500.0 E30 ; Draw the second line

G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up
;G1 X2 F1500.0 ;move to side to prevent hitting the purgeline

M300 S1000 P500 ; chirp once
M117 Printing!