#!/bin/bash                                 cd sdcard/Download/FWCassignments.git/trunk/AVR\ GCC\ assignment/code                   make                                        cd ..
pdflatex AVR-GCC.tex
termux-open AVR-GCC.pdf &
wait
cd ..
cd Assembly\ assigntment/code
avra encoder.asm
cd ..
pdflatex Assembly.tex
termux-open Assembly.pdf &
wait
cd ..
cd IDE\ assignment/code                     pio run
cd ..
pdflatex IDE.tex
termux-open IDE.pdf
