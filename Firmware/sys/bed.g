;G28 home
G1 F6000                    ; lift Z relative to current position                     
G30 P0 X200 Y285 Z-99999   ; Probe Middle
G30 P1 X65 Y15 Z-99999     ; Probe Left
G30 P2 X385 Y15 Z-99999 S3 ; Probe Right
