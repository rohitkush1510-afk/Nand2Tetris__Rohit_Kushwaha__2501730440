// Box.asm - Nand to Tetris Capstone, Part C
// Student: Rohit Kushwaha
// Roll no: 2501730440
// K = 40
// Box starts at row 40
// Height = 20 rows
// Width = 16 * ((40 mod 4) + 1) = 16 pixels = 1 word
// Starting address = SCREEN + (32 * 40) = 16384 + 1280 = 17664

(LOOP)
    @KBD
    D=M
    @PRESSED
    D;JNE

    @color
    M=0

    @DRAW
    0;JMP

(PRESSED)
    @color
    M=-1

(DRAW)
    // Calculate starting address
    @SCREEN
    D=A
    @1280
    D=D+A
    @addr
    M=D

    // Initialize row counter
    @20
    D=A
    @count
    M=D

(ROW)
    // Get drawing colour
    @color
    D=M

    // Draw one word (16 pixels)
    @addr
    A=M
    M=D

    // Move to next screen row (32 words)
    @32
    D=A
    @addr
    M=D+M

    // Decrease row counter
    @count
    M=M-1
    D=M

    @ROW
    D;JGT

    @LOOP
    0;JMP