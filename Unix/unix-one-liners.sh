# Useful one-line scripts for text processing

# Kristel Uiboaed
# 25.10.2016

# If the line begins with P, add ### in the beginning of that line
sed -e :a -e '/^P/ s/^/###/;'

# grep and print (only) the pattern
egrep -o "_[HSP]_"

# cut the first line of a file (print the output starting on the second line)
tail -n +2

# paste two files line by line with the delimiter @
# e.g.
# the first line of the first file@the first line of the second file
paste -d @ file1 file2 > pastedOutputFile

# delete the first and 25th line of an input file
sed -s '1d;103d'

# delete lines 1-5 of an input file
sed -s '1,5d'

# delete lines 1-3 and the 5th line of an input file
sed -s '1,3d;5d'
