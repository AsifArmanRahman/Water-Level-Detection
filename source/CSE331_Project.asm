
_main:

;CSE331_Project.c,31 :: 		void main()
;CSE331_Project.c,34 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	MOVLW      16
	MOVWF      main_c_L0+0
	MOVLW      0
	MOVWF      main_c_L0+1
	CLRF       main_b_L0+0
	CLRF       main_b_L0+1
;CSE331_Project.c,37 :: 		CMCON = 0x07;
	MOVLW      7
	MOVWF      CMCON+0
;CSE331_Project.c,38 :: 		ADCON1 = 0x06;
	MOVLW      6
	MOVWF      ADCON1+0
;CSE331_Project.c,39 :: 		TRISA = 0x0F;
	MOVLW      15
	MOVWF      TRISA+0
;CSE331_Project.c,40 :: 		PORTA = 0x00;
	CLRF       PORTA+0
;CSE331_Project.c,41 :: 		PORTD = 0x00;
	CLRF       PORTD+0
;CSE331_Project.c,42 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;CSE331_Project.c,43 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;CSE331_Project.c,44 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;CSE331_Project.c,45 :: 		TRISD = 0x80;
	MOVLW      128
	MOVWF      TRISD+0
;CSE331_Project.c,47 :: 		PORTD.F2 = 1;
	BSF        PORTD+0, 2
;CSE331_Project.c,48 :: 		PORTD.F7 = 1;
	BSF        PORTD+0, 7
;CSE331_Project.c,50 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;CSE331_Project.c,51 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CSE331_Project.c,52 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CSE331_Project.c,53 :: 		Lcd_Out(1,1,txt1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CSE331_Project.c,54 :: 		Lcd_Out(2,1,txt2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CSE331_Project.c,55 :: 		Delay_ms(150);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
;CSE331_Project.c,57 :: 		for(i=0; i<15; i++) {
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main1:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main33
	MOVLW      15
	SUBWF      main_i_L0+0, 0
L__main33:
	BTFSC      STATUS+0, 0
	GOTO       L_main2
;CSE331_Project.c,59 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CSE331_Project.c,60 :: 		Delay_ms(90);
	MOVLW      234
	MOVWF      R12+0
	MOVLW      195
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
;CSE331_Project.c,57 :: 		for(i=0; i<15; i++) {
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;CSE331_Project.c,61 :: 		}
	GOTO       L_main1
L_main2:
;CSE331_Project.c,62 :: 		i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;CSE331_Project.c,64 :: 		do {
L_main5:
;CSE331_Project.c,66 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CSE331_Project.c,67 :: 		Lcd_Out(1,1,wtr1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CSE331_Project.c,68 :: 		Lcd_Out(2,1,mtr1);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CSE331_Project.c,69 :: 		if(c>0) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_c_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main34
	MOVF       main_c_L0+0, 0
	SUBLW      0
L__main34:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;CSE331_Project.c,71 :: 		PORTD.F2 = 1;
	BSF        PORTD+0, 2
;CSE331_Project.c,72 :: 		c--;
	MOVLW      1
	SUBWF      main_c_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_c_L0+1, 1
;CSE331_Project.c,73 :: 		}
	GOTO       L_main9
L_main8:
;CSE331_Project.c,75 :: 		PORTD.F2 = 0;
	BCF        PORTD+0, 2
L_main9:
;CSE331_Project.c,77 :: 		if(b>0) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_b_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main35
	MOVF       main_b_L0+0, 0
	SUBLW      0
L__main35:
	BTFSC      STATUS+0, 0
	GOTO       L_main10
;CSE331_Project.c,79 :: 		PORTD.F0 = 1;
	BSF        PORTD+0, 0
;CSE331_Project.c,80 :: 		Delay_ms(125);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;CSE331_Project.c,81 :: 		PORTD.F0 = 0;
	BCF        PORTD+0, 0
;CSE331_Project.c,82 :: 		b--;
	MOVLW      1
	SUBWF      main_b_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_b_L0+1, 1
;CSE331_Project.c,83 :: 		}
L_main10:
;CSE331_Project.c,87 :: 		if(PORTD.F7 == 0) {
	BTFSC      PORTD+0, 7
	GOTO       L_main12
;CSE331_Project.c,89 :: 		c = 16;
	MOVLW      16
	MOVWF      main_c_L0+0
	MOVLW      0
	MOVWF      main_c_L0+1
;CSE331_Project.c,90 :: 		}
L_main12:
;CSE331_Project.c,92 :: 		if(PORTA == 0x0F) {
	MOVF       PORTA+0, 0
	XORLW      15
	BTFSS      STATUS+0, 2
	GOTO       L_main13
;CSE331_Project.c,94 :: 		PORTD.F1 = 1;
	BSF        PORTD+0, 1
;CSE331_Project.c,95 :: 		Lcd_Out(1,8,wtr2);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CSE331_Project.c,96 :: 		Lcd_Out(2,7,mtr3);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CSE331_Project.c,97 :: 		PORTC = 1;
	MOVLW      1
	MOVWF      PORTC+0
;CSE331_Project.c,98 :: 		if(i == 0)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main36
	MOVLW      0
	XORWF      main_i_L0+0, 0
L__main36:
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;CSE331_Project.c,100 :: 		c = 16;
	MOVLW      16
	MOVWF      main_c_L0+0
	MOVLW      0
	MOVWF      main_c_L0+1
;CSE331_Project.c,101 :: 		b=3;
	MOVLW      3
	MOVWF      main_b_L0+0
	MOVLW      0
	MOVWF      main_b_L0+1
;CSE331_Project.c,102 :: 		}
L_main14:
;CSE331_Project.c,103 :: 		i=1;
	MOVLW      1
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
;CSE331_Project.c,104 :: 		}
	GOTO       L_main15
L_main13:
;CSE331_Project.c,106 :: 		else if(PORTA == 0x0E) {
	MOVF       PORTA+0, 0
	XORLW      14
	BTFSS      STATUS+0, 2
	GOTO       L_main16
;CSE331_Project.c,108 :: 		Lcd_Out(1,8,wtr3);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CSE331_Project.c,109 :: 		if(i == 1)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      1
	XORWF      main_i_L0+0, 0
L__main37:
	BTFSS      STATUS+0, 2
	GOTO       L_main17
;CSE331_Project.c,110 :: 		Lcd_Out(2,7,mtr3);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main18
L_main17:
;CSE331_Project.c,112 :: 		Lcd_Out(2,7,mtr2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main18:
;CSE331_Project.c,113 :: 		PORTC = 3;
	MOVLW      3
	MOVWF      PORTC+0
;CSE331_Project.c,114 :: 		}
	GOTO       L_main19
L_main16:
;CSE331_Project.c,116 :: 		else if(PORTA == 0x0C) {
	MOVF       PORTA+0, 0
	XORLW      12
	BTFSS      STATUS+0, 2
	GOTO       L_main20
;CSE331_Project.c,118 :: 		Lcd_Out(1,8,wtr4);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr4+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CSE331_Project.c,119 :: 		if(i == 1)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main38
	MOVLW      1
	XORWF      main_i_L0+0, 0
L__main38:
	BTFSS      STATUS+0, 2
	GOTO       L_main21
;CSE331_Project.c,120 :: 		Lcd_Out(2,7,mtr3);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main22
L_main21:
;CSE331_Project.c,122 :: 		Lcd_Out(2,7,mtr2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main22:
;CSE331_Project.c,123 :: 		PORTC = 7;
	MOVLW      7
	MOVWF      PORTC+0
;CSE331_Project.c,124 :: 		}
	GOTO       L_main23
L_main20:
;CSE331_Project.c,126 :: 		else if(PORTA == 0x08) {
	MOVF       PORTA+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L_main24
;CSE331_Project.c,128 :: 		Lcd_Out(1,8,wtr5);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr5+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CSE331_Project.c,129 :: 		if(i == 1)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      1
	XORWF      main_i_L0+0, 0
L__main39:
	BTFSS      STATUS+0, 2
	GOTO       L_main25
;CSE331_Project.c,130 :: 		Lcd_Out(2,7,mtr3);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main26
L_main25:
;CSE331_Project.c,132 :: 		Lcd_Out(2,7,mtr2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main26:
;CSE331_Project.c,133 :: 		PORTC = 15;
	MOVLW      15
	MOVWF      PORTC+0
;CSE331_Project.c,134 :: 		}
	GOTO       L_main27
L_main24:
;CSE331_Project.c,136 :: 		else if(PORTA == 0x00) {
	MOVF       PORTA+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main28
;CSE331_Project.c,138 :: 		Lcd_Out(1,8,wtr6);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr6+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CSE331_Project.c,139 :: 		Lcd_Out(2,7,mtr2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CSE331_Project.c,140 :: 		PORTD.F1 = 0;
	BCF        PORTD+0, 1
;CSE331_Project.c,141 :: 		if(i == 1)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVLW      1
	XORWF      main_i_L0+0, 0
L__main40:
	BTFSS      STATUS+0, 2
	GOTO       L_main29
;CSE331_Project.c,143 :: 		c = 16;
	MOVLW      16
	MOVWF      main_c_L0+0
	MOVLW      0
	MOVWF      main_c_L0+1
;CSE331_Project.c,144 :: 		b = 3;
	MOVLW      3
	MOVWF      main_b_L0+0
	MOVLW      0
	MOVWF      main_b_L0+1
;CSE331_Project.c,145 :: 		}
L_main29:
;CSE331_Project.c,146 :: 		i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;CSE331_Project.c,147 :: 		PORTC = 31;
	MOVLW      31
	MOVWF      PORTC+0
;CSE331_Project.c,148 :: 		}
	GOTO       L_main30
L_main28:
;CSE331_Project.c,151 :: 		PORTA = 0x0F;
	MOVLW      15
	MOVWF      PORTA+0
;CSE331_Project.c,153 :: 		}
L_main30:
L_main27:
L_main23:
L_main19:
L_main15:
;CSE331_Project.c,154 :: 		Delay_ms(75);
	MOVLW      195
	MOVWF      R12+0
	MOVLW      205
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
;CSE331_Project.c,157 :: 		}while(100);
	GOTO       L_main5
;CSE331_Project.c,158 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
