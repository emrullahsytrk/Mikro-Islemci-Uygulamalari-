
; PICBASIC PRO(TM) Compiler 2.60, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\16F877.INC"


; Define statements.
; C:\PBP\16F877.BAS        	00018	DEFINE  CODE_SIZE 8
#define		CODE_SIZE		 8
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00012	define osc 20
#define		osc		 20
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00014	Define  LCD_DREG       PORTD   ' LCD ba�lant�lar�n� tan�mla
#define		LCD_DREG		       PORTD   
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00015	Define  LCD_DBIT	    4
#define		LCD_DBIT			    4
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00016	Define  LCD_RSREG      PORTE
#define		LCD_RSREG		      PORTE
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00017	Define  LCD_RSBIT       0
#define		LCD_RSBIT		       0
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00018	Define  LCD_EREG       PORTE
#define		LCD_EREG		       PORTE
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00019	Define  LCD_EBIT      	1
#define		LCD_EBIT		      	1

RAM_START       		EQU	00020h
RAM_END         		EQU	001EFh
RAM_BANKS       		EQU	00004h
BANK0_START     		EQU	00020h
BANK0_END       		EQU	0007Fh
BANK1_START     		EQU	000A0h
BANK1_END       		EQU	000EFh
BANK2_START     		EQU	00110h
BANK2_END       		EQU	0016Fh
BANK3_START     		EQU	00190h
BANK3_END       		EQU	001EFh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	021FFh

; C:\PBP\PBPPIC14.RAM      	00012	A00020	R0      VAR     WORD BANK0 SYSTEM       ' System Register
R0              		EQU	RAM_START + 000h
; C:\PBP\PBPPIC14.RAM      	00013	A00022	R1      VAR     WORD BANK0 SYSTEM       ' System Register
R1              		EQU	RAM_START + 002h
; C:\PBP\PBPPIC14.RAM      	00014	A00024	R2      VAR     WORD BANK0 SYSTEM       ' System Register
R2              		EQU	RAM_START + 004h
; C:\PBP\PBPPIC14.RAM      	00015	A00026	R3      VAR     WORD BANK0 SYSTEM       ' System Register
R3              		EQU	RAM_START + 006h
; C:\PBP\PBPPIC14.RAM      	00016	A00028	R4      VAR     WORD BANK0 SYSTEM       ' System Register
R4              		EQU	RAM_START + 008h
; C:\PBP\PBPPIC14.RAM      	00017	A0002A	R5      VAR     WORD BANK0 SYSTEM       ' System Register
R5              		EQU	RAM_START + 00Ah
; C:\PBP\PBPPIC14.RAM      	00018	A0002C	R6      VAR     WORD BANK0 SYSTEM       ' System Register
R6              		EQU	RAM_START + 00Ch
; C:\PBP\PBPPIC14.RAM      	00019	A0002E	R7      VAR     WORD BANK0 SYSTEM       ' System Register
R7              		EQU	RAM_START + 00Eh
; C:\PBP\PBPPIC14.RAM      	00020	A00030	R8      VAR     WORD BANK0 SYSTEM       ' System Register
R8              		EQU	RAM_START + 010h
; C:\PBP\PBPPIC14.RAM      	00026	A00032	FLAGS   VAR     BYTE BANK0 SYSTEM       ' Static flags
FLAGS           		EQU	RAM_START + 012h
; C:\PBP\PBPPIC14.RAM      	00025	A00033	GOP     VAR     BYTE BANK0 SYSTEM       ' Gen Op Parameter
GOP             		EQU	RAM_START + 013h
; C:\PBP\PBPPIC14.RAM      	00022	A00034	RM1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 014h
; C:\PBP\PBPPIC14.RAM      	00024	A00035	RM2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 015h
; C:\PBP\PBPPIC14.RAM      	00021	A00036	RR1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 016h
; C:\PBP\PBPPIC14.RAM      	00023	A00037	RR2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 017h
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00043	A00038	BTN0  var byte
_BTN0            		EQU	RAM_START + 018h
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00044	A00039	BTN1  var byte
_BTN1            		EQU	RAM_START + 019h
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00045	A0003A	BTN2  var byte
_BTN2            		EQU	RAM_START + 01Ah
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00046	A0003B	BTN3 var byte
_BTN3            		EQU	RAM_START + 01Bh
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00047	A0003C	BTN4 var byte
_BTN4            		EQU	RAM_START + 01Ch
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00048	A0003D	BTN5 var byte
_BTN5            		EQU	RAM_START + 01Dh
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00049	A0003E	BTN6 var byte
_BTN6            		EQU	RAM_START + 01Eh
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00050	A0003F	BTN7 var byte
_BTN7            		EQU	RAM_START + 01Fh
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00051	A00040	BTN8 var byte
_BTN8            		EQU	RAM_START + 020h
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00052	A00041	BTN9 var byte
_BTN9            		EQU	RAM_START + 021h
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00037	A00042	BTNA  var byte
_BTNA            		EQU	RAM_START + 022h
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00038	A00043	BTNB  var byte
_BTNB            		EQU	RAM_START + 023h
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00039	A00044	BTNC  var byte
_BTNC            		EQU	RAM_START + 024h
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00040	A00045	BTND  var byte
_BTND            		EQU	RAM_START + 025h
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00041	A00046	BTNE  var byte
_BTNE            		EQU	RAM_START + 026h
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00042	A00047	BTNF  var byte
_BTNF            		EQU	RAM_START + 027h
; C:\PBP\16F877.BAS        	00022	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP\16F877.BAS        	00023	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PBP\16F877.BAS        	00024	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP\16F877.BAS        	00025	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
#define _PORTE??2        	 PORTE, 002h
#define _PORTB??4        	 PORTB, 004h
#define _PORTB??5        	 PORTB, 005h
#define _PORTB??6        	 PORTB, 006h
#define _PORTB??7        	 PORTB, 007h
#define _PORTC??0        	 PORTC, 000h
#define _PORTC??1        	 PORTC, 001h
#define _PORTC??2        	 PORTC, 002h
#define _PORTC??3        	 PORTC, 003h
#define _PORTC??4        	 PORTC, 004h
#define _PORTC??5        	 PORTC, 005h
#define _PORTC??6        	 PORTC, 006h
#define _PORTC??7        	 PORTC, 007h
	INCLUDE	"KOD.MAC"
	INCLUDE	"C:\PBP\PBPPIC14.LIB"


; C:\PBP\16F877.BAS        	00012	BANK0   $0020, $007F
; C:\PBP\16F877.BAS        	00013	BANK1   $00A0, $00EF
; C:\PBP\16F877.BAS        	00014	BANK2   $0110, $016F
; C:\PBP\16F877.BAS        	00015	BANK3   $0190, $01EF
; C:\PBP\16F877.BAS        	00016	EEPROM  $2100, $21FF
; C:\PBP\16F877.BAS        	00017	LIBRARY "PBPPIC14"
; C:\PBP\16F877.BAS        	00018	DEFINE  CODE_SIZE 8

; C:\PBP\16F877.BAS        	00020	        include "PIC14EXT.BAS"

; C:\PBP\16F877.BAS        	00027	        include "PBPPIC14.RAM"

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00011	PCON=%00000000
	MOVE?CB	000h, PCON
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00012	define osc 20
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00014	Define  LCD_DREG       PORTD   ' LCD ba�lant�lar�n� tan�mla
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00015	Define  LCD_DBIT	    4
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00016	Define  LCD_RSREG      PORTE
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00017	Define  LCD_RSBIT       0
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00018	Define  LCD_EREG       PORTE
; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00019	Define  LCD_EBIT      	1

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00021	        ADCON1 = 7 		' PORTA ve  E dijital giri� ��k�� olarak ayarla
	MOVE?CB	007h, ADCON1

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00022	        Low PORTE.2		' LCD R/W low = yazma modu
	LOW?T	_PORTE??2

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00023	        Pause 300   	' LCD ba�lamak i�in bekle
	PAUSE?C	0012Ch

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00025	option_reg=0        'PORTB Pulluplar etkin.
	MOVE?CB	000h, OPTION_REG

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00028	TRISB=%11110000     'PORTB 7654 giri� 3210 ��k�� olarak ayarland�
	MOVE?CB	0F0h, TRISB

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00029	TRISC=%00000000     'PORTC T�m u�lar ��k�� olarak ayarland�
	MOVE?CB	000h, TRISC

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00031	portb=0:portc=0      'PORTB ve PORTC yi 0 yap
	MOVE?CB	000h, PORTB

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00031	portb=0:portc=0      'PORTB ve PORTC yi 0 yap
	MOVE?CB	000h, PORTC

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00033	lcdout $FE,1        'LCD ekran� sil
	LCDOUT?C	0FEh
	LCDOUT?C	001h

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00034	lcdout $FE,2,"KEYPAD PROJESI"
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	04Bh
	LCDOUT?C	045h
	LCDOUT?C	059h
	LCDOUT?C	050h
	LCDOUT?C	041h
	LCDOUT?C	044h
	LCDOUT?C	020h
	LCDOUT?C	050h
	LCDOUT?C	052h
	LCDOUT?C	04Fh
	LCDOUT?C	04Ah
	LCDOUT?C	045h
	LCDOUT?C	053h
	LCDOUT?C	049h

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00054	gosub Degisken0
	GOSUB?L	_Degisken0

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00056	Anadongu:

	LABEL?L	_Anadongu	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00058	portb=%11111110
	MOVE?CB	0FEh, PORTB

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00062	if portb.4=0 then BTNA=1
	CMPNE?TCL	_PORTB??4, 000h, L00001
	MOVE?CB	001h, _BTNA
	LABEL?L	L00001	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00063	if portb.5=0 then BTNB=1
	CMPNE?TCL	_PORTB??5, 000h, L00003
	MOVE?CB	001h, _BTNB
	LABEL?L	L00003	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00064	if portb.6=0 then BTNC=1
	CMPNE?TCL	_PORTB??6, 000h, L00005
	MOVE?CB	001h, _BTNC
	LABEL?L	L00005	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00065	if portb.7=0 then BTND=1
	CMPNE?TCL	_PORTB??7, 000h, L00007
	MOVE?CB	001h, _BTND
	LABEL?L	L00007	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00068	portb=%11111101
	MOVE?CB	0FDh, PORTB

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00073	if portb.4=0 then BTNE=1
	CMPNE?TCL	_PORTB??4, 000h, L00009
	MOVE?CB	001h, _BTNE
	LABEL?L	L00009	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00074	if portb.5=0 then BTNF=1
	CMPNE?TCL	_PORTB??5, 000h, L00011
	MOVE?CB	001h, _BTNF
	LABEL?L	L00011	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00075	if portb.6=0 then BTN0=1
	CMPNE?TCL	_PORTB??6, 000h, L00013
	MOVE?CB	001h, _BTN0
	LABEL?L	L00013	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00076	if portb.7=0 then BTN1=1
	CMPNE?TCL	_PORTB??7, 000h, L00015
	MOVE?CB	001h, _BTN1
	LABEL?L	L00015	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00079	portb=%11111011
	MOVE?CB	0FBh, PORTB

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00084	if portb.4=0 then BTN2=1
	CMPNE?TCL	_PORTB??4, 000h, L00017
	MOVE?CB	001h, _BTN2
	LABEL?L	L00017	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00085	if portb.5=0 then BTN3=1
	CMPNE?TCL	_PORTB??5, 000h, L00019
	MOVE?CB	001h, _BTN3
	LABEL?L	L00019	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00086	if portb.6=0 then BTN4=1
	CMPNE?TCL	_PORTB??6, 000h, L00021
	MOVE?CB	001h, _BTN4
	LABEL?L	L00021	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00087	if portb.7=0 then BTN5=1
	CMPNE?TCL	_PORTB??7, 000h, L00023
	MOVE?CB	001h, _BTN5
	LABEL?L	L00023	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00090	portb=%11110111
	MOVE?CB	0F7h, PORTB

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00095	if portb.4=0 then BTN6=1
	CMPNE?TCL	_PORTB??4, 000h, L00025
	MOVE?CB	001h, _BTN6
	LABEL?L	L00025	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00096	if portb.5=0 then BTN7=1
	CMPNE?TCL	_PORTB??5, 000h, L00027
	MOVE?CB	001h, _BTN7
	LABEL?L	L00027	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00097	if portb.6=0 then BTN8=1
	CMPNE?TCL	_PORTB??6, 000h, L00029
	MOVE?CB	001h, _BTN8
	LABEL?L	L00029	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00098	if portb.7=0 then BTN9=1
	CMPNE?TCL	_PORTB??7, 000h, L00031
	MOVE?CB	001h, _BTN9
	LABEL?L	L00031	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00099	gosub LCDgoster
	GOSUB?L	_LCDgoster

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00100	gosub degisken0
	GOSUB?L	_Degisken0

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00102	goto anadongu
	GOTO?L	_Anadongu

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00104	degisken0:

	LABEL?L	_Degisken0	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00105	BTNA=0:
	MOVE?CB	000h, _BTNA

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00106	BTNB=0:
	MOVE?CB	000h, _BTNB

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00107	BTNC=0:
	MOVE?CB	000h, _BTNC

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00108	BTND=0:
	MOVE?CB	000h, _BTND

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00109	BTNE=0:
	MOVE?CB	000h, _BTNE

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00110	BTNF=0:
	MOVE?CB	000h, _BTNF

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00111	BTN0=0:
	MOVE?CB	000h, _BTN0

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00112	BTN1=0:
	MOVE?CB	000h, _BTN1

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00113	BTN2=0
	MOVE?CB	000h, _BTN2

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00114	BTN3=0:
	MOVE?CB	000h, _BTN3

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00115	BTN4=0:
	MOVE?CB	000h, _BTN4

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00116	BTN5=0:
	MOVE?CB	000h, _BTN5

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00117	BTN6=0:
	MOVE?CB	000h, _BTN6

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00118	BTN7=0:
	MOVE?CB	000h, _BTN7

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00119	BTN8=0:
	MOVE?CB	000h, _BTN8

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00120	BTN9=0
	MOVE?CB	000h, _BTN9

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00122	return
	RETURN?	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00125	lcdgoster:

	LABEL?L	_LCDgoster	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00126	if BTNA=1 then lcdout $FE,$C0,"A":portc.0=1   'portc.0 portuna ba�l� ledi yakar
	CMPNE?BCL	_BTNA, 001h, L00033
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	041h
	MOVE?CT	001h, _PORTC??0
	LABEL?L	L00033	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00127	if BTNB=1 then lcdout $FE,$C0,"B":portc.1=1   'portc.1 portuna ba�l� ledi yakar
	CMPNE?BCL	_BTNB, 001h, L00035
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	042h
	MOVE?CT	001h, _PORTC??1
	LABEL?L	L00035	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00128	if BTNC=1 then lcdout $FE,$C0,"C":portc.2=1   'portc.2 portuna ba�l� ledi yakar
	CMPNE?BCL	_BTNC, 001h, L00037
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	043h
	MOVE?CT	001h, _PORTC??2
	LABEL?L	L00037	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00129	if BTND=1 then lcdout $FE,$C0,"D":portc.3=1   'portc.3 portuna ba�l� ledi yakar
	CMPNE?BCL	_BTND, 001h, L00039
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	044h
	MOVE?CT	001h, _PORTC??3
	LABEL?L	L00039	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00130	if BTNE=1 then lcdout $FE,$C0,"E":portc.4=1   'portc.4 portuna ba�l� ledi yakar
	CMPNE?BCL	_BTNE, 001h, L00041
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	045h
	MOVE?CT	001h, _PORTC??4
	LABEL?L	L00041	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00131	if BTNF=1 then lcdout $FE,$C0,"F":portc.5=1   'portc.5 portuna ba�l� ledi yakar
	CMPNE?BCL	_BTNF, 001h, L00043
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	046h
	MOVE?CT	001h, _PORTC??5
	LABEL?L	L00043	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00132	if BTN0=1 then lcdout $FE,$C0,"0":portc.6=1   'portc.6 portuna ba�l� ledi yakar
	CMPNE?BCL	_BTN0, 001h, L00045
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	030h
	MOVE?CT	001h, _PORTC??6
	LABEL?L	L00045	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00133	if BTN1=1 then lcdout $FE,$C0,"1":portc.7=1   'portc.7 portuna ba�l� ledi yakar
	CMPNE?BCL	_BTN1, 001h, L00047
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	031h
	MOVE?CT	001h, _PORTC??7
	LABEL?L	L00047	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00134	if BTN2=1 then lcdout $FE,$C0,"2":portc.0=0   'portc.0 portuna ba�l� ledi s�nd�r�r
	CMPNE?BCL	_BTN2, 001h, L00049
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	032h
	MOVE?CT	000h, _PORTC??0
	LABEL?L	L00049	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00135	if BTN3=1 then lcdout $FE,$C0,"3":portc.1=0 'portc.1 portuna ba�l� ledi s�nd�r�r
	CMPNE?BCL	_BTN3, 001h, L00051
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	033h
	MOVE?CT	000h, _PORTC??1
	LABEL?L	L00051	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00136	if BTN4=1 then lcdout $FE,$C0,"4":portc.2=0 'portc.2 portuna ba�l� ledi s�nd�r�r
	CMPNE?BCL	_BTN4, 001h, L00053
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	034h
	MOVE?CT	000h, _PORTC??2
	LABEL?L	L00053	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00137	if BTN5=1 then lcdout $FE,$C0,"5":portc.3=0 'portc.3 portuna ba�l� ledi s�nd�r�r
	CMPNE?BCL	_BTN5, 001h, L00055
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	035h
	MOVE?CT	000h, _PORTC??3
	LABEL?L	L00055	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00138	if BTN6=1 then lcdout $FE,$C0,"6":portc.4=0 'portc.4 portuna ba�l� ledi s�nd�r�r
	CMPNE?BCL	_BTN6, 001h, L00057
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	036h
	MOVE?CT	000h, _PORTC??4
	LABEL?L	L00057	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00139	if BTN7=1 then lcdout $FE,$C0,"7":portc.5=0 'portc.5 portuna ba�l� ledi s�nd�r�r
	CMPNE?BCL	_BTN7, 001h, L00059
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	037h
	MOVE?CT	000h, _PORTC??5
	LABEL?L	L00059	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00140	if BTN8=1 then lcdout $FE,$C0,"8":portc.6=0 'portc.6 portuna ba�l� ledi s�nd�r�r
	CMPNE?BCL	_BTN8, 001h, L00061
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	038h
	MOVE?CT	000h, _PORTC??6
	LABEL?L	L00061	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00141	if BTN9=1 then lcdout $FE,$C0,"9":portc.7=0 'portc.7 portuna ba�l� ledi s�nd�r�r
	CMPNE?BCL	_BTN9, 001h, L00063
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	039h
	MOVE?CT	000h, _PORTC??7
	LABEL?L	L00063	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00144	return
	RETURN?	

; C:\USERS\EMRULLAH\DESKTOP\YENI KLAS�R (3)\KOD.PBP	00146	end 
	END?	

	END
