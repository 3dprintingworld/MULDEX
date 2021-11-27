; called when tool 0 is freed, send tool home
;
;M106 S0             ; turn off our print cooling fan
;M83
;G1 E-5 F2400       ; retract 3mm
;G1 E-15 F400       ; retract 3mm
G91                 ; relative axis movement
G1 Z5 F500          ; lower Z 5mm
G90                 ; absolute axis movement
G1 X-16 F7500       ; park the U home