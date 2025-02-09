#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/16. IoT Home report/Firmware C/WebHome.c"
sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;








char rxd;
bit flag;

char g_value, s_value, v_value;

void GSM_init(){


 UART1_Write_Text("AT\r\n");
 Delay_ms(500);
 UART1_Write_Text("ATE0\r\n");
 Delay_ms(500);
 UART1_Write_Text("AT+CGATT=1\r\n");
 Delay_ms(500);
 UART1_Write_Text("AT+SAPBR=3,1,\"CONTYPE\",\"GPRS\"\r\n");
 Delay_ms(500);
 UART1_Write_Text("AT+SAPBR=1,1\r\n");
 Delay_ms(500);
 UART1_Write_Text("AT+HTTPINIT\r\n");
 Delay_ms(500);
}

void interrupt () {
 if (PIR1.RCIF) {
 rxd = 0;
 rxd = Uart1_Read();
 flag = 1;

 }
}

void read_server(){
 if(flag == 1){

 flag = 0;
 }
}

void write_server(){
 UART1_Write_Text("AT+HTTPPARA=\"URL\",\"http://eeefinalyear.net16.net/connect.php?g_value=");
 UART1_Write(g_value);
 UART1_Write_Text("&v_value=");
 UART1_Write(v_value);
 UART1_Write_Text("&s_value=");
 UART1_Write(s_value);
 UART1_Write_Text("\"\r\n");
}

void main() {
 TRISC = 0b10000011;
 PORTC = 0xFF;
 lcd_init();
 uart1_init(9600);
 lcd_cmd(_lcd_cursor_off);
 lcd_cmd(_lcd_clear);
 lcd_out(1,1,"please wait..");
 GSM_init();
 lcd_out(1,1,"System OK.");
 lcd_cmd(_lcd_clear);
 write_server();

 while(1){

 }
}
