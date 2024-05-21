;ALP Program to Arrange elements of the array in Ascending Order.
	AREA ascending,CODE,READONLY
	MOV R5,#04
L1	MOV R6,R5
	MOV R0, #0X40000000
L2	LDR R1,[R0]
	LDR R2,[R0,#04]
	CMP R1,R2
	BLT SKIP
	STR R1,[R0]
	STR R1,[R0,#04]
SKIP ADD R0,R0,#04
	SUBS R6,#01
	BNE L2
	SUBS R5,#01
	BNE L1
	NOP
	END

	
	
		