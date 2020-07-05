;TC Wipe cycle for tool 0
;
;G91                     ; relative positioning
;G1 H2 Z5 F3000          ; lower Z relative to current position
;M98 P"tprewipe-T0.G"    ; move extruder to wipe postion
;M98 P"signal.g"         ; Signal that hotend is at temp
;M83                     ; relative extruder movement
;G1 E15 F800            ; extrude 10mm
;G1 E20 F200             ; extrude 10mm
;M98 P"twipe-T0.G"       ; wipe nozzle
M106 R2
;G90                     ; absolute positioning
;G1 R2 X0 Y0 Z1 F3000
;M83                     ; relative extruder movement
;G1 E19.0 F300    ; retract 3mm
G90                     ; absolute positioning
;G91                     ; relative positioning
;G1 H2 Z-5 F3000         ; lift Z relative to current position
