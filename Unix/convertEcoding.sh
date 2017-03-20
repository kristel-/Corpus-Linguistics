#!/bin/bash

# Change the encoding of input files.
# Author: Kristel Uiboaed
# V. 03.03.2017
# Adapted from: <http://www.tecmint.com/convert-files-to-utf-8-encoding-in-linux/>


#enter input encoding here
FROM_ENCODING="CP1257"

#output encoding(UTF-8)
TO_ENCODING="UTF-8"

#convert
CONVERT=" iconv  -f   $FROM_ENCODING  -t   $TO_ENCODING"

#loop to convert multiple files 
for  file  in  *.txt; do
	$CONVERT   "$file"   -o  "${file%.txt}.utf8"

done
exit
