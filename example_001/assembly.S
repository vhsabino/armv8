	.globl test
test:
	// X0 = &a
	LDUR X9, [X0, #0] 	// Load from memory
	ADD X10, X9, XZR	// X10 = X9
	CBNZ X10, L1		// if X10 != 0 go to L1
	SUB X11, X10, 2		// X11 = X10 - 2
	B L2
L1:
	SUB X11, X10, 5
	STUR X11, [X0, #0]	// Store to memory
	B return
L2:
	STUR X11, [X0, #0]	// Store to memory
	B return

return:
	br	X30