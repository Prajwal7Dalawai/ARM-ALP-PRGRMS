	AREA largest,CODE,READONLY
		LDR R1,=ARR1
		MOV R2,#05
		LDR R9,=LARGEST
		
		LDR R3,[R1],#04
NEXTELE LDR R4,[R1],#04
		CMP R3,R4
		BCS XCHANGE
		B NEXTELE
XCHANGE MOV R3,R4
		SUBS R2,R2,#01
		BNE NEXTELE
		
		STR R3,[R9]
		NOP
ARR1 DCD 0X1, 0X2, 0X3, 0X4, 0X5
	AREA data1,DATA,READWRITE
LARGEST DCD 0X0
	END