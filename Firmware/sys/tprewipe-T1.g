; move T1 to wipe position
;
G90                        ; absolute axis movement
G1 X417 F6000              ; park the X carriage 
G1 Y330                    ; park the Y axis carriage
G1 X318                    ; send T1 to wipe posion
M116 P0                    ; wait for tool 0 heaters to reach operating temperature



