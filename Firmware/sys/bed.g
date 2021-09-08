if move.axes[2].userPosition < 5	; if Z is too close or not homed
  G1 H2 Z5 F6000    			; then lift Z
M558 F50				; Slow probing speed
G1 F6000                    ; lift Z relative to current position   
G30 P0 X200 Y270 Z-99999   ; Probe Middle
G30 P1 X30 Y30 Z-99999     ; Probe Left G30 P1 X15 Y15 Z-99999 
G30 P2 X310 Y30 Z-99999 S3 ; Probe Right G30 P2 X324 Y15 Z-99999 S3