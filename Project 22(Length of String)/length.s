;ALP PROGRAM TO FIND THE LENGTH OF THE STRING
	AREA length,CODE,READONLY

		LDR R1,=STRING1
		MOV R5,#0
		
		
NEXT	LDRB R2,[R1],#01
		CMP R2, #'$'
		BEQ STOP
		ADD R5,R5,#01
		
		B NEXT		
STOP	NOP
		NOP
STRING1 DCB "HELLO $",0
		END
		