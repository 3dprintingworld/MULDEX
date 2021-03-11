; homeall.g

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

;M584 Y5                    ; Y-axis right side 
;M574 Y6 S1 P"ystop"         ; Y-axis right side endstop Active
;G1 H1 Y15 F360              ; move slowly to Y axis endstop once more (second pass)
;M584 Y6                     ; Y-axis Left side
;M574 Y6 S1 P"zstop"        ; Y-axis left side endstop Active
;G1 H1 Y15 F360              ; move slowly to Y axis endstop once more (second pass)
;M584 Y5:6                   ; Combine Y-Axis
;M574 Y6 S1 P"ystop+zstop"  ; Y Double max active high endstop switch

G1 Y-5  F6000               ; go back a few mm
G1 H1 X-25 F360              ; move slowly to X axis(second pass)
G1 H1 U25                  ; move slowly to U axis(second pass)
G1 H2 X2 U-2 F7500              ; go back a few mm

; Z Homing
T0 P0
G90 G1 X219 Y150 F6000      ; Move to the center of the bed
M558 F500                    ; Fast probing speed
G30                          ; First probe
M558 F50                     ; Slow probing speed
G30                          ; Second probe
G32                          ; Level the bed
G90 G1 X219 Y150 F7500      ; Move to the center of the bed
G30                          ; Bed Deviation probe
G90 G1 X-16                  ; Park x-axis
