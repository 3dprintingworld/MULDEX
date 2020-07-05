G90                                             ; send absolute coordinates...
M83                                             ; ...but relative extruder moves
M550 P"Muldex"                                  ; set printer name


; Network
M552 S1                                         ; enable network
M586 P0 S1                                      ; enable HTTP
M586 P1 S0                                      ; disable FTP
M586 P2 S0                                      ; disable Telnet

; Drives
M569 P1 S0                                      ; X physical drive 0 goes backwards
M569 P1 S1                                      ; Y right physical drive 1 goes forwards
M569 P2 S0                                      ; U physical drive 2 goes backwards
M569 P3 S1                                      ; E1 physical drive 3 goes forwards
M569 P4 S1                                      ; E2 physical drive 4 goes forwards
M569 P5 S0                                      ; Z left physical drive 5 goes backwards
M569 P6 S0                                      ; Z center physical drive 6 goes backwards
M569 P7 S1                                      ; Z right physical drive 7 goes forwards
M569 P9 S0                                      ; Y left physical drive 8 goes backwards
M584 X0 U2 Y1:9 Z5:6:7 E3:4                     ; set drive mapping

M350 X16 U16 Y16 Z16 E16:16 I1                                                        ; configure microstepping with interpolation
M92 X100.00 U100.00 Y100.00:100.00 Z1096:1096:1096 E1760.00:1760.00                   ; set steps per mm (1827bf extruder)(1800 rec)
M566 X1600.00 U1600.00 Y1600.00:1600.00 Z80.00:80.00:80.00 E40.00:40.00               ; set maximum instantaneous speed changes (mm/min)(900)
M203 X12000.00 U12000.00 Y12000.00:12000.00 Z1500.00:1500.00:1500.00 E4200.00:4200.00 ; set maximum speeds (mm/min)
M201 X750.00 U750.00 Y750.00:750.00 Z35.00:35.00:35.00 E120.00:120.00                 ; set accelerations (mm/s^2)(500)
M906 X900 U900 Y900:900 Z200:200:200 E600:600 I30                                     ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                                                               ; Set idle timeout

; Axis Limits
M208 X35 Y0 U-17.7 Z0 S1                        ; set axis min was -17.5
M208 X419 U365 Y339 Z300 S0                     ; set axis max Y WAS 336

M669 K0 Y1:-1:0:1				                ; select Markforged Kinematics Y to react with X and U

; Endstops
M574 X2 S1 P"xstop"                             ;X axis active high endstop switch
M574 U1 S1 P"e0stop"                            ;U axis active high endstop switch
M574 Y2 S1 P"Ystop"                             ;Y axis active high endstop switch
;M574 V2 S1 P"zstop"                            ;V axis active high endstop switch

;Dual Y Endstop
;M574 Y2 S1 P"ystop+zstop"                      ; Y Double max active high endstop switch

;Stall Detection
;M574 Y1 S4                                     ; Y axis stall detection
;M915 P1:9 S3 F1 R0                             ; Y axis stall detection

; Z-Probe
M671 X-20.6:200:420.6 Y14.3:333.3:14.3 S2       ; Locations left, center, right          
M950 S0 C"duex.e6heat"                          ; create servo pin 0 for BLTouch
M558 P9 C"zprobe.in+zprobe.mod" H5 F120 T6000   ; set Z probe type to bltouch and the dive height + speeds
G31 P25 X28.8 Y0 Z2.20                          ; set Z probe trigger value, offset and trigger height(lower number farther away)2.23build 2.20nocomp
M557 X65:390 Y10:290 S20                        ; probe from X=10 to 190, Y=10 to 190mm with a mesh spacing of 20mm

; Heaters
M308 S0 P"bedtemp" Y"thermistor" T100000 B4534 C9.565227e-8      ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bedheat" T0                                            ; create bed heater output on bedheat and map it to sensor 0
M143 H0 S120                                                     ; set temperature limit for heater 0 to 120C
M307 H0 B0 S1.00                                                 ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0                                                          ; map heated bed to heater 0
M308 S1 P"e0temp" Y"thermistor" T500000 B4723 C1.196220e-7 R4700 ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e0heat" T1                                             ; create nozzle heater output on e0heat and map it to sensor 1
M143 H1 S280                                                     ; set temperature limit for heater 1 to 280C
M307 H1 B0 S1.00                                                 ; disable bang-bang mode for heater  and set PWM limit
M308 S2 P"e1temp" Y"thermistor" T500000 B4723 C1.196220e-7 R4700 ; configure sensor 2 as thermistor on pin e1temp
M950 H2 C"e1heat" T2                                             ; create nozzle heater output on e1heat and map it to sensor 2
M143 H2 S280                                                     ; set temperature limit for heater 2 to 280C
M307 H2 B0 S1.01                                                 ; disable bang-bang mode for heater  and set PWM limit

; Fans
M950 F0 C"fan0" Q500                             ; create fan 0 on pin fan0 and set its frequency
M106 P0 S0 H-1                                   ; set fan 0 value. Thermostatic control is turned off
M950 F1 C"fan1" Q500                             ; create fan 1 on pin fan1 and set its frequency
M106 P1 S1 H1 T45                                ; set fan 1 value. Thermostatic control is turned on
M950 F2 C"fan2" Q500                             ; create fan 2 on pin fan2 and set its frequency
M106 P2 S0 H-1                                   ; set fan 2 value. Thermostatic control is turned off
M950 F3 C"duex.fan8" Q500                        ; create fan 3 on pin duex.fan8 and set its frequency
M106 P3 S1 H2 T45                                ; set fan 3 value. Thermostatic control is turned on

; LEDs
M950 F4 C"duex.fan6" ;Q500                       ; create LED 4 on pin duex.fan6 and set its frequency
M106 P4 S255 H-1                                 ; set LED 4 value. Thermostatic control is turned OFF
M950 F5 C"duex.fan7" ;Q500                       ; create LED 5 on pin duex.fan7 and set its frequency
M106 P5 S255 H-1                                 ; set LED 5 value. Thermostatic control is turned OFF

; Tools
M563 P0 D0 H1 X3 F0 S"Left"                      ; define tool 0 Left 
G10 P0 X0 Y-.45 Z0                               ; set tool 0 axis offsets y was .13
G10 P0 R0 S0                                     ; set initial tool 0 active and standby temperatures to 0C

M563 P1 D1 H2 F2 S"Right"                        ; define tool 1 Right
G10 P1 X0 Y0 Z0                                  ; set tool 1 axis offsets
G10 P1 R0 S0                                     ; set initial tool 1 active and standby temperatures to 0C

M563 P2 D0:1 H1:2 X0:3 F0:2 S"Copy"              ; define tool 2 Copy
G10 P2 X-90 Y0 U90 S0 R0                         ; set tool 2 axis offsets (WAS 105)
M567 P2 E1:1         
M568 P2 S1 ; turn on mixing for tool 2           ; set mix ratio 100% on both extruders

M501                                             ; Record

M575 P1 S1 B57600                                ;Panel due 