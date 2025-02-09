;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

'Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 10  
Declare LCD_RSPin PORTB.1
Declare LCD_ENPin PORTB.2
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4
Declare Hserial_Baud = 9600
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100100 
Declare Hserial_Clear = On 

Symbol sound_sense = PORTC.0
'Symbol vibrate_sense = PORTC.1
Symbol relay_1 = PORTC.1
Symbol relay_2 = PORTC.2
Symbol relay_3 = PORTC.3
Input sound_sense 
Output relay_1 : Output relay_2
Output relay_3 

Dim rly1_status As Byte 
Dim rly2_status As Byte 
Dim rly3_status As Byte 
Dim msg[4] As Byte
Dim temp As Byte
Dim x As Word

Dim g_value As Byte
Dim t_value As Byte
Dim s_value As Byte

Cls
PORTC = 0
  
Clear

main:
  g_value = ADIn 0
  t_value = ADIn 1
  t_value = t_value * 1.96
  If sound_sense = 0 Then 
    s_value = 1
  Else
    s_value = 0
  EndIf
  Print At 1,1, "Smoke: ", Dec3 g_value, " PPM"
  Print At 2,1, Dec3 t_value, 223,"C   ", "Sound: ", Dec1 s_value
  DelayMS 200
  
  If g_value > 50 Then 
    relay_1 = 1 
  Else 
    relay_1 = 0 
  EndIf
  
  If t_value > 27 Then 
    relay_2 = 1  
  Else 
    relay_2 = 0  
  EndIf
  
  If s_value = 1 Then 
    relay_3 = 1  
  Else 
    relay_3 = 0 
  EndIf
  
  HSerOut [Dec3 g_value, ",", Dec3 t_value, ",", Dec1 s_value, ","]
  HSerOut [Dec1 relay_1, ",", Dec1 relay_2, ",", Dec1 relay_3, ","]
  HSerOut [13, 10]
GoTo main

