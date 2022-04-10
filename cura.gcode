;;;;; startup

G21                          ; metric values
G90                          ; absolute positioning
M107                         ; start with the fan off
G28                          ; home all three axes
; G29                          ; read mesh
                             ; g29 not needed if stored

; Kiss Generation
G0 X5 Y5 Z5 F5000		; Move to position
G92 E0		             ; Reset Extruder
G1 E80 F300		     ; Extrude a kiss
G92 E0                       ; RESET AGAIN
G0 E-2 F300               ; RETRACT
G92 E0

G0 X00 Y40 F1000
G0 X00 Y40 Z-.1 F1000
G0 X10 Y40
G0 X00 Y50
G0 X10 Y50
G0 X00 Y60
G0 X10 Y60
G0 X00 Y70
G0 X10 Y70
G0 Z5


;;;;; end

; end
M104 S0                      ; extruder heater off
M140 S0                      ; bed heater off
G91                          ; relative positioning
G1 E-1 F300                  ; retract the filament to release pressure
G1 Z 1 F9000                 ; move Z up a bit
G28 X Y                      ; re-home x and y
G90                          ; absolute positioning
G0 Y400
M84                          ; steppers off
M82                          ; absolute extrusion mode
