	AREA sumAlternate, CODE, READONLY
		LDR R0,=ARR
		LDR R9,=RESULT
		MOV R1,#05	;COUNT=5
		MOV R4,#00	;SUM=0
NEXTELE	LDR R2,[R0],#08
		ADDS R4,R4,R2
		SUBS R1,R1,#02
		BLE 1
		B NEXTELE
		STR R4,[R9]
		NOP
ARR DCD 0X1, 0X2, 0X3, 0X4, 0X5
	AREA data1,DATA,READWRITE
RESULT DCD 0X0
	END
		