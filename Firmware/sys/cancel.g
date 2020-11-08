G90                 ; absolute axis movement
G1 X-16 U417 F6000  ; park the X and U carriage
G1 Y330             ; park the Y axis
;G1 Z300 F6000      ; lift Z relative to current position - uncomment if you want the bed to go down
M106 S0             ; turn fan off
M104 S0             ; turn off temperature
G28 X0              ; home X axis
M84                 ; disable motors
M140 S0              ;turn bed off