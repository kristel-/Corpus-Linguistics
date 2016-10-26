#! /bin/bash

# Kristel Uiboaed
# 26.10.2016

# Modify a word frequency list and
# sort it by a second column (alphabetically)
tr -s ' ' \
| sed 's/^ \([0-9]*\) \([^ ]\)/\1:\2/' \
| sort -k2 -t: \
