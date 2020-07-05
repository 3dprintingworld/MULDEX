G90 ; absolute axis movement
G1 U-18 X417 F6000 ; park the U carriage at -48mm
G1 Y330
G1 Z300 F6000    ; lift Z relative to current position
M106 S0   ;turn fan off
M104 S0 ; turn off temperature
G28 X0  ; home X axis
M84     ; disable motors
M140 S   ;turn bed off