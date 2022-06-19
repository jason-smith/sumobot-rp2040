; Jason's Custom Ender 5 Pro Start Code (Mostly Cura defaults)

G4 ; Wait
M220 S100 ; Reset Speed factor override percentage to default (100%)
M221 S100 ; Reset Extrude factor override percentage to default (100%)
G91 ; Set coordinates to relative
G1 F1800 E-3 ; Retract filament 3 mm to prevent oozing
G1 F3000 Z80 ; Move Z Axis up 80 mm out of the way
G90 ; Set coordinates to absolute
G28 X Y; Move the X and Y axis back home

M104 S0 ; Turn off extruder
M140 S0 ; Turn off bed
M106 S0 ; Turn off cooling fan
M107 ; Turn off Fan
M84 ; Disable stepper motors

M300 S1000 P500 ; chirp once
M117 Print Finished!