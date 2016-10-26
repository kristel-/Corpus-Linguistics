#! /bin/bash

# Kristel Uiboaed
# 26.10.2016

# Count xml-tags in the file.
# Use #, IF it does not occur in the input file.

tr -d '\012' \
| sed 's/<teiCorpus.*<\/teiHeader>//g' \
| tr -s ' ' \
| sed 's/</#</g' \
| sed 's/>/>#/g' \
| tr '#' '\012' \
| grep '[<>]' \
| sort | uniq -c | sort -nr


