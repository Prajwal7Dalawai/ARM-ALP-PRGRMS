;ALP Program to Arrange elements of the array in Ascending Order.
AREA ascending,CODE,READONLY
		ENTRY
		MOV R8,#04
		LDR R2,=CVALUE
		LDR R3,=DVALUE
loop0  LDR R1,[R2],#4
		STR R1,[R3],#4
		SUBS R8,R8,#1
		CMP R8,#0
		BNE loop0
start  MOV R5,#03
        MOV R7,#0
		LDR R1,=DVALUE
loop   LDR R2,[R1],#4
		LDR R3,[R1]
		CMP R2,R3
		BLT loop2
		STR R2,[R1],#-4
		STR R3,[R1]
		MOV R7,#01
		ADD R1,#04
loop2  SUBS R5,R5,#01
		CMP R5,#0
		BNE loop 
		CMP R7,#0
		BNE start
		NOP
		NOP
		NOP
CVALUE DCD 0X44444444
	   DCD 0X11111111
	   DCD 0X33333333
	   DCD 0X22222222
  AREA data1,DATA,READWRITE
DVALUE DCD 0X000
	 
	 END