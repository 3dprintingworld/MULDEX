G4 S1          ; Slight Delay
G90            ; absolute axis movement
G1 Y305 F3000  ; wipe forword
;G1 U89         ; move over 
;G1 Y330        ; wipe backwords
;G1 U79         ; move over
;G1 Y305        ; wipe forwords
;G1 U94         ; move over
;G1 Y330        ; wipe backwords
;G1 U74         ; move over
;G1 Y305        ; wipe forword
M83            ; relative extruder movement
G1 E-.5 F1000    ; retract 3mm
M400           ; Wait for moves to complete
M292           ; Hide message
G90            ; absolute axis movement