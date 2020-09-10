	.globl test
test:
	MOV X11, X0			// Moves X0 register to X11
	LDURB W12,[X11, #2]	// Loads a char to reg 12
	CMP W12, #77		// #65 = 'A'  #82 = 'R' #77 = 'M'
	B.EQ L1				// if reg 12 = 'M' go to L1
	MOV X0, #65			// else execute this (Moves 'A' to X0)
	BR X30				// Return to main program
L1:
	MOV X0, #66			// Moves 'B' to X0
	BR X30				// Return to main program

