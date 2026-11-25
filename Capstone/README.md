# Nand to Tetris Capstone: Make the Computer Draw a Box

**Name:** Rohit Kushwaha  **Roll no:** 2501730440  **K = 40**
**Box:** starts at row 40, 20 rows tall, 16 x ((40 mod 4)+1) = **32 pixels** wide (2 words) from the left edge.
**Assembler extra feature (K mod 3 = 1):** wrong lines print `Line N: invalid instruction ...` instead of crashing.

## Files
| File | Part | Purpose |
|---|---|---|
| `CPU.hdl`, `Memory.hdl`, `Computer.hdl` | A | The Hack computer (all official tests pass in the NAND2Tetris Web IDE) |
| `assembler.py` | B | Two-pass Hack assembler in Python |
| `Box.asm` / `Box.hack` | C | Box program and its machine code (made by `assembler.py`) |
| `verify_box.py` | extra | Mini Hack simulator that checks the box pixel by pixel |
| `tests/` | B | Add and Max with expected output |
| `screenshots/` | report | Test and emulator screenshots |

## How to run
```
python assembler.py Box.asm            # makes Box.hack
python verify_box.py Box.hack 40       # optional self-check, prints PASS
```
- **Part A:** open https://nand2tetris.github.io/web-ide/chip, choose Project 5, paste each `.hdl` file into its chip (CPU, Memory, Computer) and run the built-in tests.
- **Part C:** open https://nand2tetris.github.io/web-ide/cpu, load `Box.hack`, run it, click the screen and hold a key to see the box.
