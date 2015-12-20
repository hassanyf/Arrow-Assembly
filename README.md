# Arrow-Assembly

Write a TSR to make an arrow travel the border of the
screen from top left to top right to bottom right to bottom left and
back to top left at the speed of 36.4 locations per second. The arrow
should not destroy the data beneath it and should be restored as
soon as the arrow moves forward.
The arrow head should point in the direction of movement using the
characters > V < and ^. The journey should be accompanied by a
different tone from the pc speaker for each side of the screen. Do
interrupt chaining so that running the TSR 10 times produces 10
arrows traveling at different locations.
HINT: At the start you will need to reprogram channel 0 for 36.4
interrupts per second, double the normal. You will have to reprogram
channel 2 at every direction change, though you can enable the
speaker once at the very start.

### Pre-requisite

1. DOSBox Emulator
2. NASM (Netwide Assembler)

### How to compile

1. Open DOSBox
2. Mount your drive and navigate to your assembly folder
3. Make sure nasm.exe and arrow.asm are in the same folder
4. Compile the program in DOSBox using this: `nasm arrow.com -o arrow.com -l arrow.lst`
5. Now run the program via `arrow.com`
6. Party

