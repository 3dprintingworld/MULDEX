; homeall.g

; X,U,Y Homing
T1
G91                         ; relative positioning
G1 H2 Z5 F6000              ; lift Z relative to current position
G1 H1 X475 U-475 Y500 F1800 ; move quickly to X or Y endstop and stop there (first pass)
G1 H1 X475                  ; home X axis
G1 H1 U-475                 ; home U axis
G1 H1 Y500                  ; home Y axis
G1 X-5 U5 Y-5 F6000         ; go back a few mm
G1 H1 X25 F360              ; move slowly to X axis(second pass)
G1 H1 U-25                  ; move slowly to U axis(second pass)
G1 H1 Y25                   ; move slowly to Y axis(second pass)

; Z Homing
G90 G1 X171 Y150 F10000      ; Move to the center of the bed
M558 F500                    ; Fast probing speed
G30                          ; First probe
M558 F50                     ; Slow probing speed
G30                          ; Second probe
G32                          ; Level the bed
G90 G1 X171 Y150 F10000      ; Move to the center of the bed
G30                          ; Bed Deviation probe
G90 G1 X417                  ; Park x-axis
