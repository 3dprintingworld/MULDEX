; move T0 to wipe position
;
G90                        ; absolute axis movement
G1 U-18 F6000              ; park the U carriage 
G1 Y330                    ; park the Y axis carriage
G1 U84                     ; send u carriage to wipe posion
M116 P0                    ; wait for tool 0 heaters to reach operating temperature



