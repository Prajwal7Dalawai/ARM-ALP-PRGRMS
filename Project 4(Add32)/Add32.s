	AREA Add32,CODE,READONLY
		LDR R0,=NUM1
		LDR R1,=NUM2
		LDR R9,=RESULT
		LDR R3,[R0]
		LDR R4,[R1]
		ADDS R5,R3,R4
		STR R5,[R9]

NUM1 DCD 0X1111
NUM2 DCD 0X2222
	AREA data1,DATA,READWRITE
RESULT DCD 0X0
		END