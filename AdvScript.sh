#!/bin/bash                              
  cd sdcard/Download/FWCassignments.git/trunk/AVR\ GCC\ assignment/code
make
cd ..
pdflatex AVR-GCC.tex
termux-open AVR-GCC.pdf &
wait
while true; do
read -p "Do you want to proceed and compile Assembly Assignment files ? (y/n) " yn

case $yn in
        [yY] ) echo ok, Here is you go!!!!;
             break;;
        [nN] ) echo exiting...;
             exit;;              
          * )  echo invalid response;;
esac

done
cd ..
cd Assembly\ assigntment/code
avra encoder.asm
cd ..
pdflatex Assembly.tex
termux-open Assembly.pdf &
wait
cd ..
