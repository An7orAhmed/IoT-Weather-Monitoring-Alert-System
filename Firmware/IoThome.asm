;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
 LIST  P = 16F73, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
INDF equ 0X0000
TMR0 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR equ 0X0004
PORTA equ 0X0005
PORTB equ 0X0006
PORTC equ 0X0007
PCLATH equ 0X000A
INTCON equ 0X000B
PIR1 equ 0X000C
PIR2 equ 0X000D
TMR1L equ 0X000E
TMR1LH equ 0X000F
TMR1H equ 0X000F
T1CON equ 0X0010
TMR2 equ 0X0011
T2CON equ 0X0012
SSPBUF equ 0X0013
SSPCON equ 0X0014
CCPR1L equ 0X0015
CCPR1LH equ 0X0016
CCPR1H equ 0X0016
CCP1CON equ 0X0017
RCSTA equ 0X0018
TXREG equ 0X0019
RCREG equ 0X001A
CCPR2L equ 0X001B
CCPR2LH equ 0X001C
CCPR2H equ 0X001C
CCP2CON equ 0X001D
ADRES equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
PIE1 equ 0X008C
PIE2 equ 0X008D
PCON equ 0X008E
PR2 equ 0X0092
SSPADD equ 0X0093
SSPSTAT equ 0X0094
TXSTA equ 0X0098
SPBRG equ 0X0099
ADCON1 equ 0X009F
EEDATL equ 0X010C
PMDATL equ 0X010C
EEDATA equ 0X010C
EEDAT equ 0X010C
PMDATA equ 0X010C
EEADR equ 0X010D
PMADR equ 0X010D
EEDATLH equ 0X010E
PMDATLH equ 0X010E
EEDATH equ 0X010E
PMDATH equ 0X010E
EEADRH equ 0X010F
PMADRH equ 0X010F
EECON1 equ 0X018C
PMCON1 equ 0X018C
_I2C_SCL_PORT=TRISC
_I2C_SCL_PIN=3
_I2C_SDA_PORT=TRISC
_I2C_SDA_PIN=4
IRP=7
RP1=6
RP0=5
NOT_TO=4
NOT_PD=3
Z=2
DC=1
C=0
GIE=7
PEIE=6
T0IE=5
INTE=4
RBIE=3
T0IF=2
INTF=1
RBIF=0
ADIF=6
RCIF=5
PP_RCIF=5
TXIF=4
PP_TXIF=4
SSPIF=3
CCP1IF=2
TMR2IF=1
TMR1IF=0
CCP2IF=0
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
T1INSYNC=2
TMR1CS=1
TMR1ON=0
TOUTPS3=6
TOUTPS2=5
TOUTPS1=4
TOUTPS0=3
TMR2ON=2
PP_TMR2ON=2
T2CKPS1=1
PP_T2CKPS1=1
T2CKPS0=0
PP_T2CKPS0=0
WCOL=7
SSPOV=6
SSPEN=5
CKP=4
SSPM3=3
SSPM2=2
SSPM1=1
SSPM0=0
CCP1X=5
CCP1Y=4
CCP1M3=3
CCP1M2=2
CCP1M1=1
CCP1M0=0
SPEN=7
RX9=6
RC9=6
NOT_RC8=6
RC8_9=6
SREN=5
CREN=4
PP_CREN=4
FERR=2
OERR=1
PP_OERR=1
RX9D=0
RCD8=0
CCP2X=5
CCP2Y=4
CCP2M3=3
CCP2M2=2
CCP2M1=1
CCP2M0=0
ADCS1=7
ADCS0=6
CHS2=5
CHS1=4
CHS0=3
GO=2
NOT_DONE=2
GO_DONE=2
PP_GO_DONE=2
ADON=0
NOT_RBPU=7
INTEDG=6
T0CS=5
T0SE=4
PSA=3
PS2=2
PS1=1
PS0=0
ADIE=6
RCIE=5
TXIE=4
SSPIE=3
CCP1IE=2
TMR2IE=1
TMR1IE=0
CCP2IE=0
NOT_POR=1
NOT_BO=0
NOT_BOR=0
SMP=7
CKE=6
I2C_DATA=5
NOT_A=5
NOT_ADDRESS=5
D_A=5
DATA_ADDRESS=5
I2C_STOP=4
I2C_START=3
I2C_READ=2
NOT_W=2
NOT_WRITE=2
R_W=2
PP_R_W=2
READ_WRITE=2
UA=1
BF=0
PP_BF=0
CSRC=7
TX9=6
NOT_TX8=6
TX8_9=6
TXEN=5
SYNC=4
BRGH=2
TRMT=1
TX9D=0
TXD8=0
PCFG2=2
PCFG1=1
PCFG0=0
RD=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X08-0X09
  __BADRAM 0X88-0X89, 0X8F-0X91, 0X95-0X97, 0X9A-0X9E
  __BADRAM 0X105, 0X107-0X109, 0X110-0X11F
  __BADRAM 0X185, 0X187-0X189, 0X18D-0X19F
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
CP_ALL equ 0X3FEF
CP_OFF equ 0X3FFF
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FF7
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FFB
LP_OSC equ 0X3FFC
XT_OSC equ 0X3FFD
HS_OSC equ 0X3FFE
RC_OSC equ 0X3FFF
BOREN_OFF equ 0X3FBF
BOREN_ON equ 0X3FFF
CP_ON equ 0X3FEF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_RC equ 0X3FFF
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
#define __16F73 1
#define XTAL 10
#define _CORE 14
#define _MAXRAM 192
#define _RAM_END 0X00C0
#define _MAXMEM 4096
#define _ADC 5
#define _ADC_RES 8
#define _EEPROM 0
#define _PAGES 2
#define _BANKS 3
#define RAM_BANKS 2
#define _USART 1
#define _USB 0
#define _FLASH 2
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00FF
#define BANK2_START 0X0110
#define BANK2_END 0X0120
#define BANK3_START 0X0190
#define BANK3_END 0X01A0
#define _SYSTEM_VARIABLE_COUNT 33
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
#define LCD#DTPORT PORTB
#define LCD#DTPIN 4
#define LCD#RSPORT PORTB
#define LCD#RSPIN 1
#define LCD#ENPORT PORTB
#define LCD#ENPIN 2
#define LCD#INTERFACE 4
#define LCD#TYPE 0
f@call macro PDEST
if(PDEST < 1)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if((PDEST & 6144) == 0)
        clrf 10
else
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
endif
endif
endif
        call PDEST
        endm
F@JUMP macro PDEST
if(PDEST < 1)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if((PDEST & 6144) == 0)
        clrf 10
else
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
endif
endif
endif
        goto PDEST
        endm
set@page macro PDEST
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
        endm
s@b     macro pVarin
if((pVarin & 384) == 0)
if(ram_bank == 1)
        bcf 3,5
endif
if(ram_bank == 2)
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
        bcf 3,6
endif
ram_bank = 0
endif
if((pVarin & 384) == 128)
if(ram_bank == 0)
        bsf 3,5
endif
if(ram_bank == 2)
        bsf 3,5
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,6
endif
ram_bank = 1
endif
if((pVarin & 384) == 256)
if(ram_bank == 0)
        bsf 3,6
endif
if(ram_bank == 1)
        bcf 3,5
        bsf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
endif
ram_bank = 2
endif
if((pVarin & 384) == 384)
if(ram_bank == 0)
        bsf 3,5
        bsf 3,6
endif
if(ram_bank == 1)
        bsf 3,6
endif
if(ram_bank == 2)
        bsf 3,5
endif
ram_bank = 3
endif
        endm
r@b     macro
if((ram_bank & 1) != 0)
        bcf 3,5
endif
if((ram_bank & 2) != 0)
        bcf 3,6
endif
ram_bank = 0
        endm
jump macro PLABEL
    goto PLABEL
    endm
wreg_byte macro pByteOut
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
wreg_bit macro pVarOut,pBitout
    s@b pVarOut
    andlw 1
    btfsc STATUS,2
    bcf pVarOut,pBitout
    btfss STATUS,2
    bsf pVarOut,pBitout
    r@b
    endm
wreg_word macro pWordOut
    s@b pWordOut
    movwf pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    r@b
    endm
wreg_dword macro pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    s@b pDwordOut
    movwf pDwordOut
    r@b
    endm
byte_wreg macro pByteIn
    s@b pByteIn
    movf pByteIn,W
    r@b
    endm
num_wreg macro pNumIn
    movlw (pNumIn & 255)
    endm
num_byte macro pNumIn,pByteOut
    s@b pByteOut
if(pNumIn == 0)
    clrf pByteOut
else
    movlw (pNumIn & 255)
    movwf pByteOut
endif
    r@b
    endm
num_bit macro pNumIn,pVarOut,pBitout
    s@b pVarOut
if((pNumIn & 1) == 1)
    bsf pVarOut,pBitout
else
    bcf pVarOut,pBitout
endif
    r@b
    endm
num_word macro pNumIn,pWordOut
if((pNumIn & 255) == 0)
    s@b pWordOut
    clrf pWordOut
else
    s@b pWordOut
    movlw low (pNumIn)
    movwf pWordOut
endif
if(((pNumIn >> 8) & 255) == 0)
    s@b pWordOut+1
    clrf pWordOut+1
else
    s@b pWordOut+1
    movlw high (pNumIn)
    movwf pWordOut+1
endif
    r@b
    endm
num_dword macro pNumIn,pDwordOut
if ((pNumIn >> 24 & 255) == 0)
    s@b pDwordOut+3
    clrf pDwordOut+3
else
    s@b pDwordOut+3
    movlw ((pNumIn >> 24) & 255)
    movwf pDwordOut+3
endif
if( ((pNumIn >> 16) & 255) == 0)
    s@b pDwordOut+2
    clrf pDwordOut+2
else
    s@b pDwordOut+2
    movlw ((pNumIn >> 16) & 255)
    movwf pDwordOut+2
endif
if( ((pNumIn >> 8) & 255) == 0)
    s@b pDwordOut+1
    clrf pDwordOut+1
else
    s@b pDwordOut+1
    movlw high (pNumIn)
    movwf pDwordOut+1
endif
if((pNumIn & 255) == 0)
    s@b pDwordOut
    clrf pDwordOut
else
    s@b pDwordOut
    movlw low (pNumIn)
    movwf pDwordOut
endif
    r@b
    endm
bit_wreg macro pVarin,pBitIn
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    r@b
    endm
bit_byte macro pVarin,pBitIn,pByteOut
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
bit_bit macro pVarin,pBitIn,pVarOut,pBitout
if((pVarin & 65408) == (pVarOut & 65408))
    s@b pVarOut
    btfsc pVarin,pBitIn
    bsf pVarOut,pBitout
    btfss pVarin,pBitIn
    bcf pVarOut,pBitout
else
    s@b pVarin
    clrdc
    btfsc pVarin,pBitIn
    setdc
    s@b pVarOut
    skpndc
    bsf pVarOut,pBitout
    skpdc
    bcf pVarOut,pBitout
endif
    endm
bit_word macro pVarin,pBitIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    bit_byte pVarin,pBitIn,pWordOut
    endm
bit_dword macro pVarin,pBitIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    bit_byte pVarin,pBitIn,pDwordOut
    endm
word_wreg macro pWordIn
    byte_wreg pWordIn
    endm
word_byte macro pWordIn,pByteOut
    byte_byte pWordIn,pByteOut
    endm
word_bit macro pWordIn,pVarOut,pBitout
    byte_bit pWordIn, pVarOut, pBitout
    endm
word_word macro pWordIn,pWordOut
    s@b pWordIn+1
    movf pWordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pWordIn,pWordOut
    endm
word_dword macro pWordIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    byte_byte pWordIn+1,pDwordOut+1
    byte_byte pWordIn,pDwordOut
    endm
byte_byte macro pByteIn,pByteOut
    s@b pByteIn
    movf pByteIn,W
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
byte_word macro pByteIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    byte_byte pByteIn,pWordOut
    endm
byte_dword macro pByteIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    byte_byte pByteIn,pDwordOut
    endm
    byte_bit macro pByteIn,pVarOut,pBitout
if((pByteIn & 65408) == (pVarOut & 65408))
    s@b pByteIn
    btfsc pByteIn,0
    bsf pVarOut,pBitout
    btfss pByteIn,0
    bcf pVarOut,pBitout
else
    s@b pByteIn
    rrf pByteIn,W
    s@b pVarOut
    skpnc
    bsf pVarOut,pBitout
    skpc
    bcf pVarOut,pBitout
endif
    r@b
    endm
dword_wreg macro pDwordIn
    byte_wreg pDwordIn
    endm
dword_byte macro pDwordIn,pByteOut
    byte_byte pDwordIn,pByteOut
    endm
dword_word macro pDwordIn,pWordOut
    s@b pDwordIn+1
    movf pDwordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pDwordIn,pWordOut
    endm
dword_dword macro pDwordIn,pDwordOut
    byte_byte pDwordIn+3,pDwordOut+3
    byte_byte pDwordIn+2,pDwordOut+2
    byte_byte pDwordIn+1,pDwordOut+1
    byte_byte pDwordIn,pDwordOut
    endm
dword_bit macro pDwordIn,pVarOut,pBitout
    byte_bit pDwordIn,pVarOut,pBitout
    endm
variable CURRENT@PAGE = 0
variable PDESTINATION@PAGE = 0
FIND@PAGE macro pLabelIn
local CURRENT_ADDR = $
local DEST_ADDR = pLabelIn
if((CURRENT_ADDR >= 0X1800) && (CURRENT_ADDR <= 0X2000))
    CURRENT@PAGE = 3
endif
if((CURRENT_ADDR >= 0X1000) && (CURRENT_ADDR <= 0X1800))
    CURRENT@PAGE = 2
endif
if((CURRENT_ADDR >= 0X0800) && (CURRENT_ADDR <= 0X1000))
    CURRENT@PAGE = 1
endif
if((CURRENT_ADDR >= 0) && (CURRENT_ADDR <= 0X0800))
    CURRENT@PAGE = 0
endif
if((DEST_ADDR >= 0X1800) && (DEST_ADDR <= 0X2000))
    PDESTINATION@PAGE = 3
endif
if((DEST_ADDR >= 0X1000) && (DEST_ADDR <= 0X1800))
    PDESTINATION@PAGE = 2
endif
if((DEST_ADDR >= 0X0800) && (DEST_ADDR <= 0X1000))
    PDESTINATION@PAGE = 1
endif
if((DEST_ADDR >= 0) && (DEST_ADDR <= 0X0800))
    PDESTINATION@PAGE = 0
endif
    endm
NUM_FSR macro pNumIn
    num_byte pNumIn, FSR
if (((pNumIn >> 8) & 255) == 1)
    bsf STATUS,7
else
    bcf STATUS,7
endif
    endm
label_word macro pLabelIn,pWordOut
    movlw low (pLabelIn)
    s@b pWordOut
    movwf pWordOut
    movlw high (pLabelIn)
    s@b pWordOut
    movwf pWordOut+1
    r@b
    endm
BPF = 32
BPFH = 33
CSTR#CT = 34
GEN = 35
GEN4 = 36
GEN4H = 37
PP0 = 38
PP0H = 39
PP1 = 40
PP1H = 41
PP2 = 42
PP2H = 43
PP3 = 44
PP3H = 45
PP4 = 46
PP5 = 47
PP7 = 48
PP7H = 49
PPZ = 50
PPZH = 51
PPZHH = 52
PP_AARG = 53
PP_AARGH = 54
PP_AARGHH = 55
PP_AARGHHH = 56
PP_BARG = 57
PP_BARGH = 58
PP_BARGHH = 59
PP_BARGHHH = 60
_BEXP = 61
_FP_FLAGS = 62
_FP_TEMP = 63
_SIGN = 64
rly1_status = 65
rly2_status = 66
rly3_status = 67
msg = 68
variable msg#0=68,msg#1=69,msg#2=70,msg#3=71
temp = 72
_X = 73
_XH = 74
g_value = 75
t_value = 76
s_value = 77
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define sound_sense PORTC,0
#define relay_1 PORTC,1
#define relay_2 PORTC,2
#define relay_3 PORTC,3
#define __XTAL 10
#define __LCD_RSPIN 1
#define __LCD_ENPIN 2
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
HSERIAL_SPBRG = 64
HSERIAL_TXSTA = 36
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 9600
proton#code#start
        org 0
        goto proton#main#start
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call CH@SND
        movlw 1
        call CH@SND
        movlw 117
        movwf 39
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 47
        movlw 254
        call CH@SND
        movf 47,W
        goto CH@SND
OUT@DECB
        clrf 37
OUT@DECC
        movwf 42
        clrf 43
OUT@DEC
        bcf 32,3
        movf 37,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 36
        movlw 39
        movwf 41
        movlw 16
        call D@DIG
        movlw 3
        movwf 41
        movlw 232
        call D@DIG
        clrf 41
        movlw 100
        call D@DIG
        clrf 41
        movlw 10
        call D@DIG
        movf 42,W
        goto SEND@IT
D@DIG
        movwf 40
        movf 43,W
        movwf 39
        movf 42,W
        movwf 38
        call D@VD
        movf 38,W
SEND@IT
        movwf 38
        decf 36,F
        skpnz
        bcf 32,3
        movf 37,W
        skpnz
        goto $ + 4
        subwf 36,W
        skpnc
        goto EX@SEND@IT
        movf 38,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
PRINT
        movwf 45
        bcf PORTB,2
        bcf PORTB,1
        bsf 3,5
        bcf PORTB,2
        bcf PORTB,1
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 45,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 39
        movlw 128
        call DLUS@W
        movlw 51
        movwf 44
        call PR@LP
        movlw 19
        movwf 39
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 44
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 45,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 44
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,1
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 39
        movlw 208
        call DLUS@W
        bsf 3,0
        return
PRIT@SKP
        bsf 32,0
        sublw 254
        skpnz
        goto PR@EX
        bsf PORTB,1
PRT@S
        btfss 32,0
PR@LP
        bcf 32,0
        bsf PORTB,2
        movlw 15
        andwf PORTB,F
        movf 44,W
        andlw 240
        iorwf PORTB,F
        bcf PORTB,2
        swapf 44,F
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 45,W
        goto I@NT
HRSOUT
        btfss 12,PP_TXIF
        goto $ - 1
        movwf 25
        bsf 3,0
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
        btfsc 33,2
        goto HRSOUT
        return
C@STROUT
        movwf 36
C@STROUTW
        clrf 34
C@STROUTLP
        movf 36,W
        bsf 3,6
        movwf 269
        bcf 3,6
        movf 37,W
        bsf 3,6
        movwf 271
        call C@READ
        skpnz
        goto I@NT
        call CH@SND
        incf 36,F
        skpnz
        incf 37,F
        incfsz 34,F
        goto C@STROUTLP
        goto I@NT
C@READ
        bsf 3,5
        bsf 3,6
        bsf 396,PP_RD
        nop
        nop
        bcf 3,5
        movf 268,W
        goto I@NT
ADIN_STIME = 50
ADIN_TAD = 3
ADIN_RES = 8
RD@AD
        movwf 44
        rlf 44,F
        rlf 44,F
        rlf 44,W
        andlw 56
        iorlw 193
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        clrf 49
        movf 30,W
        movwf 48
        goto I@NT
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
DL@MS
        clrf 41
DLY@W
        movwf 40
DLY@P
        movlw 255
        addwf 40,F
        skpc
        addwf 41,F
        skpc
        goto I@NT
        movlw 3
        movwf 39
        movlw 228
        call DLUS@W
        goto DLY@P
DL@US
        clrf 39
DLUS@W
        addlw 246
        movwf 38
        comf 39,F
        skpc
        goto $ + 7
        movlw 254
        nop
        addwf 38,F
        skpnc
        goto $ - 3
        addwf 38,F
        nop
        incfsz 39,F
        goto $ - 8
        nop
        btfsc 38,0
        goto $ + 1
        btfsc 38,0
        goto $ + 1
        return
D@VD
        clrf 43
        clrf 42
D@VD2
        movlw 16
        movwf 44
        rlf 39,W
        rlf 42,F
        rlf 43,F
        movf 40,W
        subwf 42,F
        movf 41,W
        skpc
        incfsz 41,W
        subwf 43,F
        skpnc
        goto $ + 8
        movf 40,W
        addwf 42,F
        movf 41,W
        skpnc
        incfsz 41,W
        addwf 43,F
        bcf 3,0
        rlf 38,F
        rlf 39,F
        decfsz 44,F
        goto $ - 21
        movf 38,W
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
FPM@32
        movf 54,W
        movwf 52
        xorwf 58,W
        movwf 64
        movf 53,W
        xorlw 0
        btfss 3,2
        movf 57,W
        xorlw 0
        btfsc 3,2
        goto FPM@RES0
        addwf 53,F
        movlw 126
        btfss 3,0
        goto FPM@L3
        subwf 53,F
        btfsc 3,0
        goto FPM@OVERFLOW
        goto FPM@L8
FPM@L3
        subwf 53,F
        btfss 3,0
        goto FPM@UNDERFLOW
FPM@L8
        movf 56,W
        movwf 50
        movf 55,W
        movwf 51
        bsf 52,7
        bsf 58,7
        clrf 56
        clrf 55
        clrf 54
        movlw 24
        movwf 63
FPM@L9
        rrf 52,F
        rrf 51,F
        rrf 50,F
        btfss 3,0
        goto FPM@L12
        movf 60,W
        addwf 56,F
        movf 59,W
        btfsc 3,0
        incfsz 59,W
        addwf 55,F
        movf 58,W
        btfsc 3,0
        incfsz 58,W
        addwf 54,F
FPM@L12
        rrf 54,F
        rrf 55,F
        rrf 56,F
        decfsz 63,F
        goto FPM@L9
        btfsc 54,7
        goto FPM@L14
        rlf 56,F
        rlf 55,F
        rlf 54,F
        movf 53,F
        btfsc 3,2
        goto FPM@UNDERFLOW
        decf 53,F
        rlf 52,W
FPM@L14
        btfss 62,6
        goto FPM@L28
        btfss 3,0
        goto FPM@L28
        incfsz 56,F
        goto FPM@L28
        incfsz 55,F
        goto FPM@L28
        incfsz 54,F
        goto FPM@L28
        bsf 3,0
        rrf 54,F
        rrf 55,F
        rrf 56,F
        incf 53,F
        btfsc 3,2
        goto FPM@OVERFLOW
FPM@L28
        goto FPM@SET_SIGN
FPM@UNDERFLOW
        bsf 62,2
FPM@RES0
        clrf 53
        goto FPM@MANTISSA
FPM@OVERFLOW
        bsf 62,1
        movlw 255
        movwf 53
FPM@MANTISSA
        clrf 56
        clrf 55
        movlw 128
        movwf 54
FPM@SET_SIGN
        btfsc 64,7
        goto FPM@L30
        bcf 54,7
FPM@L30
        goto I@NT
FL32@TOINT32
        movf 54,W
        movwf 64
        movlw 127
        subwf 53,W
        movwf 63
        btfsc 3,0
        goto FI@L3
        movlw 0
        goto FI@ASSIGNW
FI@L3
        bsf 54,7
        clrf 53
        clrf 50
        movf 63,W
        sublw 23
        movwf 63
        btfsc 3,0
        goto FI@L5
        movlw 8
        addwf 63,F
        btfss 3,0
        goto FI@OVERFLOW
FI@L7
        movf 54,W
        movwf 53
        movf 55,W
        movwf 54
        movf 56,W
        movwf 55
        clrf 56
        goto FI@L8
FI@L5
        movlw 8
        subwf 63,F
        btfss 3,0
        goto FI@L10
        movf 56,W
        movwf 50
        movf 55,W
        movwf 56
        movf 54,W
        movwf 55
        clrf 54
        goto FI@L5
FI@L10
        addwf 63,F
FI@L8
        movf 63,F
        btfsc 3,2
        goto FI@L16
FI@L15
        bcf 3,0
        rrf 53,F
        rrf 54,F
        rrf 55,F
        rrf 56,F
        rrf 50,F
        decfsz 63,F
        goto FI@L15
FI@L16
        btfsc 53,0
        goto FI@OVERFLOW
        btfss 62,6
        goto FI@L30
        btfss 50,7
        goto FI@L30
        incfsz 56,F
        goto FI@L30
        incfsz 55,F
        goto FI@L30
        incf 54,F
FI@L30
        movf 53,W
        movwf 50
        movf 56,W
        movwf 53
        movf 50,W
        movwf 56
        movf 54,W
        movwf 50
        movf 55,W
        movwf 54
        movf 50,W
        movwf 55
        btfss 64,7
        goto FI@L32
        comf 56,F
        comf 55,F
        comf 54,F
        comf 53,F
        incfsz 53,F
        goto FI@L32
        incfsz 54,F
        goto FI@L32
        incf 55,F
        btfsc 3,2
        incf 56,F
FI@L32
        movf 53,W
        goto I@NT
FI@OVERFLOW
        bsf 62,5
        movlw 255
FI@ASSIGNW
        movwf 56
        movwf 55
        movwf 54
        movwf 53
        goto I@NT
INT08@TOFL32
        movwf 53
        clrf 54
INT16@TOFL32
        clrf 55
        clrf 56
INT32@TOFL32
        movlw 150
        movwf 63
        bcf 64,7
        btfss 56,7
        goto IF@L5
        comf 56,F
        comf 55,F
        comf 54,F
        comf 53,F
        incfsz 53,F
        goto IF@L4
        incfsz 54,F
        goto IF@L4
        incf 55,F
        btfsc 3,2
        incf 56,F
IF@L4
        bsf 64,7
IF@L5
        movf 56,F
        btfsc 3,2
        goto IF@L7
        btfss 62,6
        goto IF@L17
        btfss 56,7
        goto IF@L17
        incfsz 54,F
        goto IF@L17
        incfsz 55,F
        goto IF@L17
        incfsz 56,F
        goto IF@L17
        bsf 3,0
        rrf 56,F
        rrf 55,F
        rrf 54,F
        incf 63,F
IF@L17
        movlw 8
        addwf 63,F
        movf 54,W
        movwf 53
        movf 55,W
        movwf 54
        movf 56,W
        movwf 55
        goto IF@L18
IF@L7
        movf 55,F
        btfss 3,2
        goto IF@L18
        movlw 8
        subwf 63,F
        movf 54,W
        btfss 3,2
        goto IF@L20
        movlw 8
        subwf 63,F
        movf 53,W
        btfss 3,2
        goto IF@L22
        movf 56,W
        movwf 63
        goto IF@EXIT
IF@L22
        clrf 53
IF@L20
        movwf 55
        movf 53,W
        movwf 54
        clrf 53
IF@L18
        btfsc 55,7
        goto IF@L24
        bcf 3,0
        rlf 53,F
        rlf 54,F
        rlf 55,F
        decf 63,F
        goto IF@L18
IF@L24
        btfss 64,7
        bcf 55,7
IF@EXIT
        movf 53,W
        movwf 56
        movf 63,W
        movwf 53
        movf 55,W
        movwf 63
        movf 54,W
        movwf 55
        movf 63,W
        movwf 54
        goto I@NT
proton#main#start
        clrf 3
        bsf 3,5
        movlw 64
        movwf 153
        movlw 36
        movwf 152
        bcf 3,5
        movlw 144
        movwf 24
        movlw 64
        movwf 62
        clrf 32
F2_SOF equ $ ; IOTHOME.PRP
F2_EOF equ $ ; IOTHOME.PRP
F1_SOF equ $ ; IOTHOME.BAS
F1_000026 equ $ ; IN [IOTHOME.BAS] INPUT SOUND_SENSE
        bsf STATUS,5
ram_bank = 1
        bsf TRISC,0
F1_000027 equ $ ; IN [IOTHOME.BAS] OUTPUT RELAY_1 : OUTPUT RELAY_2
        bcf TRISC,1
        bcf TRISC,2
F1_000028 equ $ ; IN [IOTHOME.BAS] OUTPUT RELAY_3
        bcf TRISC,3
F1_000041 equ $ ; IN [IOTHOME.BAS] CLS
        bcf STATUS,5
ram_bank = 0
        f@call LCD@CLS
F1_000042 equ $ ; IN [IOTHOME.BAS] PORTC = 0
        clrf PORTC
F1_000044 equ $ ; IN [IOTHOME.BAS] CLEAR
        movf _FP_FLAGS,W
        movwf 32
        movlw 33
        movwf FSR
        movlw 97
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
        movf 32,W
        movwf _FP_FLAGS
        clrf 32
main
F1_000047 equ $ ; IN [IOTHOME.BAS] G_VALUE = ADIN 0
        movlw 0
        f@call RD@AD
        movwf g_value
F1_000048 equ $ ; IN [IOTHOME.BAS] T_VALUE = ADIN 1
        movlw 1
        f@call RD@AD
        movwf t_value
F1_000049 equ $ ; IN [IOTHOME.BAS] T_VALUE = T_VALUE * 1.96
        movf t_value,W
        f@call INT08@TOFL32
        movlw 72
        movwf PP_BARGHHH
        movlw 225
        movwf PP_BARGHH
        movlw 122
        movwf PP_BARGH
        movlw 127
        movwf PP_BARG
        f@call FPM@32
        f@call FL32@TOINT32
        movwf t_value
F1_000050 equ $ ; IN [IOTHOME.BAS] IF SOUND_SENSE = 0 THEN
        set@page BC@LL2
        btfsc PORTC,0
        goto BC@LL2
F1_000051 equ $ ; IN [IOTHOME.BAS] S_VALUE = 1
        movlw 1
        movwf s_value
        F@JUMP BC@LL3
BC@LL2
F1_000052 equ $ ; IN [IOTHOME.BAS] ELSE
F1_000053 equ $ ; IN [IOTHOME.BAS] S_VALUE = 0
        clrf s_value
F1_000054 equ $ ; IN [IOTHOME.BAS] ENDIF
BC@LL3
F1_000055 equ $ ; IN [IOTHOME.BAS] PRINT AT 1,1, "SMOKE: ", DEC3 G_VALUE, " PPM"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
        movlw 3
        movwf GEN4H
        movf g_value,W
        f@call OUT@DECC
        movlw 32
        f@call PRINT
        movlw 80
        f@call PRINT
        f@call PRINT
        movlw 77
        f@call PRINT
F1_000056 equ $ ; IN [IOTHOME.BAS] PRINT AT 2,1, DEC3 T_VALUE, 223,"C   ", "SOUND: ", DEC1 S_VALUE
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        movf t_value,W
        f@call OUT@DECC
        movlw 223
        f@call PRINT
        movlw 67
        f@call PRINT
        movlw 32
        f@call PRINT
        f@call PRINT
        f@call PRINT
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
        movlw 1
        movwf GEN4H
        movf s_value,W
        f@call OUT@DECC
F1_000057 equ $ ; IN [IOTHOME.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000059 equ $ ; IN [IOTHOME.BAS] IF G_VALUE > 50 THEN
        movlw 51
        subwf g_value,W
        set@page BC@LL5
        btfss STATUS,0
        goto BC@LL5
F1_000060 equ $ ; IN [IOTHOME.BAS] RELAY_1 = 1
        bsf PORTC,1
        F@JUMP BC@LL6
BC@LL5
F1_000061 equ $ ; IN [IOTHOME.BAS] ELSE
F1_000062 equ $ ; IN [IOTHOME.BAS] RELAY_1 = 0
        bcf PORTC,1
F1_000063 equ $ ; IN [IOTHOME.BAS] ENDIF
BC@LL6
F1_000065 equ $ ; IN [IOTHOME.BAS] IF T_VALUE > 27 THEN
        movlw 28
        subwf t_value,W
        set@page BC@LL8
        btfss STATUS,0
        goto BC@LL8
F1_000066 equ $ ; IN [IOTHOME.BAS] RELAY_2 = 1
        bsf PORTC,2
        F@JUMP BC@LL9
BC@LL8
F1_000067 equ $ ; IN [IOTHOME.BAS] ELSE
F1_000068 equ $ ; IN [IOTHOME.BAS] RELAY_2 = 0
        bcf PORTC,2
F1_000069 equ $ ; IN [IOTHOME.BAS] ENDIF
BC@LL9
F1_000071 equ $ ; IN [IOTHOME.BAS] IF S_VALUE = 1 THEN
        movlw 1
        subwf s_value,W
        set@page BC@LL11
        btfss STATUS,2
        goto BC@LL11
F1_000072 equ $ ; IN [IOTHOME.BAS] RELAY_3 = 1
        bsf PORTC,3
        F@JUMP BC@LL12
BC@LL11
F1_000073 equ $ ; IN [IOTHOME.BAS] ELSE
F1_000074 equ $ ; IN [IOTHOME.BAS] RELAY_3 = 0
        bcf PORTC,3
F1_000075 equ $ ; IN [IOTHOME.BAS] ENDIF
BC@LL12
F1_000077 equ $ ; IN [IOTHOME.BAS] HSEROUT[DEC3 G_VALUE, ",", DEC3 T_VALUE, ",", DEC1 S_VALUE, ","]
        movlw 4
        movwf BPFH
        movlw 3
        movwf GEN4H
        movf g_value,W
        f@call OUT@DECC
        movlw 44
        f@call HRSOUT
        movlw 3
        movwf GEN4H
        movf t_value,W
        f@call OUT@DECC
        movlw 44
        f@call HRSOUT
        movlw 1
        movwf GEN4H
        movf s_value,W
        f@call OUT@DECC
        movlw 44
        f@call HRSOUT
F1_000078 equ $ ; IN [IOTHOME.BAS] HSEROUT[DEC1 RELAY_1, ",", DEC1 RELAY_2, ",", DEC1 RELAY_3, ","]
        movlw 4
        movwf BPFH
        movlw 1
        movwf GEN4H
        movlw 0
        btfsc PORTC,1
        movlw 1
        f@call OUT@DECC
        movlw 44
        f@call HRSOUT
        movlw 1
        movwf GEN4H
        movlw 0
        btfsc PORTC,2
        movlw 1
        f@call OUT@DECC
        movlw 44
        f@call HRSOUT
        movlw 1
        movwf GEN4H
        movlw 0
        btfsc PORTC,3
        movlw 1
        f@call OUT@DECC
        movlw 44
        f@call HRSOUT
F1_000079 equ $ ; IN [IOTHOME.BAS] HSEROUT[13, 10]
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000080 equ $ ; IN [IOTHOME.BAS] GOTO MAIN
        F@JUMP main
F1_EOF equ $ ; IOTHOME.BAS
PB@LB14
        F@JUMP PB@LB14
STR@LB1
        de 83,109,111,107,101,58,32,0
STR@LB2
        de 83,111,117,110,100,58,32,0
__EOF
__config XT_OSC & WDT_OFF & PWRTE_ON & BODEN_ON & CP_OFF
        end
