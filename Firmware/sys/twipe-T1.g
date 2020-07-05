G4 S1           ; Slight Delay
G90             ; absolute axis movement
G1 Y305 F3000   ; wipe forword
;G1 X323        ; move over 
;G1 Y330        ; wipe backwords
;G1 X313        ; move over
;G1 Y305        ; wipe forwords
;G1 X328        ; move over
;G1 Y330        ; wipe backwords
;G1 X308        ; move over
;G1 Y305        ; wipe forword
M83             ; relative extruder movement
G1 E-1 F1000    ; retract 3mm
M400            ; Wait for moves to complete
M292            ; Hide message
G90             ; absolute axis movement