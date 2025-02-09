# IoT Weather Monitoring & Alert System

## Description  
This project implements an IoT-based environmental monitoring system using a PIC microcontroller (16F73) with C/C++/Proton Basic code. It integrates smoke/gas, temperature, and sound sensors to enable real-time safety alerts. Sensor data is displayed on an LCD, triggers relay-controlled actuators (exhaust fan, cooling system, alarm), and transmits to a remote server via GSM for cloud logging.

## Pin Configuration  
| Component       | Pin(s)          | Notes                          |
|-----------------|-----------------|--------------------------------|
| **LCD (4-bit)** | RS: RB1, EN: RB2, Data: RB4 | Configured via 4-bit interface |
| **Sensors**     |                 |                                |
| Smoke/Gas       | AN0 (PORTA.0)   | MCP3201 ADC input              |
| Temperature     | AN1 (PORTA.1)   | Linearized to °C               |
| Sound           | PORTC.0         | Digital input                  |
| Vibrations      | PORTC.1*        | _(Code commented out)_         |
| **Relays**      |                 |                                |
| Exhaust Fan     | PORTC.1         | Activated if smoke >50 PPM     |
| Cooling System  | PORTC.2         | Activated if temperature >27°C|
| Alarm           | PORTC.3         | Triggered by sound detection   |
| **GSM Module**  | UART1 (Tx/Rx)   | Default microcontroller pins   |

**Note:** Pin mappings may vary between `IoThome.bas` and `WebHome.c` - verify against actual hardware.

## Code Overview  
### `IoThome.bas` (Proton Basic)
- Configures PIC16F73 with HS oscillator (10MHz)
- Implements:  
  - Analog sensor reading (smoke/gas, temp)
  - Threshold-based relay control logic  
  - LCD output formatting (smoke in PPM, temp in °C)  
  - Serial data output (9600 baud) for external devices

### `WebHome.c` (C - PIC Microcontroller)
- Manages GSM communication via SIM800 module
- Sends HTTP GET requests to cloud server with parameters:  
  ```php
  ?g_value=<smoke>&v_value=<vibrations>&s_value=<sound>
  ```
- Features UART interrupt handling for bidirectional GSM communication

⚠️ **Hardware Note**: Schematics in code may require adjustments for specific module variants. Always verify connections with actual component datasheets.
