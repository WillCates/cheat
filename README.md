# cheat
Poor man's reference. Basically a keyword search of flat files of notes, where keywords are at the top of the file. Just a quick, command-line way to keep track of those flags you needed for sed/awk/nmap or whatevs.

Here is what some basic usage looks like (searching for keyword 'awk' below):



 computername:~ USERID$ cheat awk

 \# awk match

 1037  cat ia_to_stores_20171016_120040-20171017_115406.csv |awk -F\, '{if(!match($6,/10\.6\.232\.43/)) print $4, $5, $6, $7, $8, $9, $10 }'
  1038  cat ia_to_stores_20171016_120040-20171017_115406.csv |awk -F\, '{if(match($6,/10\.6\.232\.43/)) print $4, $5, $6, $7,  $8, $9, $10 }'

 \# Add Line numbers to beginning of each line of CSV file:
 awk '{printf("%010d,%s\n", NR, $0)}'

 computername:~ userid$


This is assuming that the 'cheat' script is in your local $PATH variable. I typically put the 'cheat' script in /usr/sbin, but as long as it is in your path, you should be able to use it globally. You will also need to change the base directory variable in the script to match whatever directory you store the '.cheat' directory in that contains all the notes files. 

