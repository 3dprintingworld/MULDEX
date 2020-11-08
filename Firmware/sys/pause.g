; pause.g
M83                   ; relative extruder moves
G1 E-10 F3600         ; retract 10mm of filament
G91                   ; relative positioning
G1 Z5 F360            ; lift Z by 5mm
G90                   ; absolute positioning
G1 X-16 U421 Y0 F6000 ; Bring X and U axis forword

