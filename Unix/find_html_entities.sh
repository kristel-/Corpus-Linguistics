#! /bin/bash

# Kristel Uiboaed
# 26.10.2016

# Create a frequency list of html-entities.
# Use #, IF it does not occur in the input file.

sed 's/\(&[^ ;]*;\)/#\1#/g' \
| tr '#' '\012' \
| grep '^&[^ ;]*;$' \
| sort | uniq -c | sort -nr


