	AREA evenoddarray,CODE,READONLY
		LDR R0,=ARR
		LDR R1,=EVEN
		LDR R2,=ODD
		MOV R3,#05 ;NO OF ELEMENTS
NEXTNUM	LDR R4,[R0],#4
		MOV R7,R4
		MOVS R4,R4,LSR #1
		BCS ENTERODD
		ADD R5,R5,#01
		STR R7,[R1], #4
		B NEXT
ENTERODD ADD R6,R6,#1
		STR R7,[R2], #4
NEXT	SUBS R3,R3,#1
		BNE NEXTNUM
		NOP
		NOP
ARR DCD 0X1, 0X2, 0X3, 0X4, 0X5
	AREA data1,DATA,READWRITE
EVEN DCD 0X0, 0X0, 0X0, 0X0, 0X0
ODD DCD 0X0, 0X0, 0X0, 0X0, 0X0
	END
		
		