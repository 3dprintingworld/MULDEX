; homez.g

G91                          ; relative positioning
G1 H2 Z5 F6000               ; lift Z relative to current position
G90 G1 X171 Y150 F10000      ; Move to the center of the bed
M558 F500                    ; Fast probing speed
G30                          ; First probe
M558 F50                     ; Slow probing speed
G30                          ; Second probe
G32                          ; Level the bed
M558 F50                     ; Slow probing speed
G90 G1 X171 Y150 F10000      ; Move to the center of the bed
G30                          ; Bed Deviation probe




