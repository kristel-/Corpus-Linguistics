#!/bin/bash

# Remove headers from xml-files in the working directory
# and write the output a file with xml2-extension.
# In the end move output files to the output directory.

mkdir outputDir
 for f in `ls *.xml`
do
	myInput=${f}
	myOutput=${myInput/.xml/.xml2}
	echo == in file $myInput
	echo == out file $myOutput
cat $myInput \
| tr -d "\012" \
| sed 's/<teiCorpus.*<\/teiHeader>//' \
> $myOutput
echo completed

done

mv *.xml2 outputDir

exit
