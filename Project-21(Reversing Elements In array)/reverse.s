;Program to reverse elements in the array
	AREA reverse,CODE,READONLY
		MOV R0,#0; i=0
		ADR R1,ARR2 ;ASSEMBLY MACRO WHICH DOESN'T OCCUPY MEMORY LOCATION
		LDR R7,=ARR1
			
NEXTELE	CMP R0,#08
		BGE DONE
		RSB R3,R0,#07	;REVERSE SUBTRACTION- 7 - [R0] = R3
		LDRB R5,[R1,R3]	;R3=7-i TO RE1 ADDRESS R3 VALUE GETS ADDED			STRB R5,[R7,R0]	;VALUE OF R0 GETS ADDED TO R7AND VALUE OF R5 STORED IN RESULT OF THIS VALUE
		ADD R0,R0,#01
		B NEXTELE
DONE	B DONE	;INDFINITE LOOP
		ALIGN
			NOP
ARR2 DCB 0XA, 0X7, 0X6, 0XB, 0X3, 0X2, 0X8, 0X7
	AREA,data1,DATA,READWRITE
ARR1 DCB 0X0, 0X0, 0X0, 0X0, 0X0, 0X0, 0X0
	END