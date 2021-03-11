; homey.g

; X,U,Y Homing
T0 P0
G91                         ; relative positioning
G1 H2 Z5 F2000              ; lift Z relative to current position
G1 H1 X-475 U475 F7500      ;Rough home X and U axis
G1 H1 X-475                  ; home X axis
G1 H1 U475                 ; home U axis
G1 H2 X5 U-10 F7500           ; go back a few mm
G1 H1 Y500 F6000            ; move quickly to Y axis endstop and stop there (first pass)
G1 Y-5  F6000               ; go back a few mm
M584 Y1                     ; Y-axis right side 
M574 Y2 S1 P"ystop"         ; Y-axis right side endstop Active
G1 H1 Y15 F360              ; move slowly to Y axis endstop once more (second pass)
M584 Y2                     ; Y-axis Left side
M574 Y2 S1 P"zstop"        ; Y-axis left side endstop Active
G1 H1 Y15 F360              ; move slowly to Y axis endstop once more (second pass)
M584 Y1:2                   ; Combine Y-Axis
M574 Y2 S1 P"ystop+zstop"  ; Y Double max active high endstop switch
G1 Y-5  F6000               ; go back a few mm
G1 H1 X-25 F360              ; move slowly to X axis(second pass)
G1 H1 U25                  ; move slowly to U axis(second pass)
G1 H2 X2 U-2 F7500              ; go back a few mm