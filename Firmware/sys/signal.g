; Beep / flash lights
;
M300 S200 P500            ; beep
M106 P4 S0                ; Turn left LED off
M106 P5 S0                ; Turn left LED off
G4 P500                   ; Wait one second
M106 P4 S255              ; Turn left LED on
M106 P5 S255              ; Turn left LED on
G4 P500                   ; Wait one second
M106 P4 S0                ; Turn left LED off
M106 P5 S0                ; Turn left LED off
G4 P500                   ; Wait one second
M106 P4 P5 S255           ; Turn left LED on
M106 P5 S255              ; Turn left LED on
M291 P"Feeding filament..." R"Loading PLA" T5  ; Display new message
