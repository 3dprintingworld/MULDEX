; homey.g

G91                      ; relative positioning
G1 H2 Z5 F6000           ; lift Z relative to current position
M584 Y1 V9               ; Split Y axis motors
;M574 Y2 S1 P"ystop"     ; Split Y axis motors
;M574 V2 S1 P"Zstop"     ; Split Y axis motors
G1 H1 Y500 F1800         ; move quickly to Y axis endstop and stop there (first pass)
G1 Y-5 F6000             ; go back a few mm
G1 H1 Y25 F360           ; move slowly to Y axis endstop once more (second pass)
G1 H2 Z-5 F6000          ; lower Z again
G90                      ; absolute positioning
;M584 Y1:9               ; Combine Y-Axis



