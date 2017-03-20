#! /bin/sh

# Kristel Uiboaed
# 14.11.2016

sed 's/\(^[^/]*\/\/[^/]*\/\/\).*$/\1/' \
|  sed -r 's/^[^ ]* {4}//' \
| sed 's/<s>//g' \
| grep -v '^$' \
| sed 's/\(<\/s>\)/\1\n\1\n\1\n\1/' > koikread.txt

cat koikread.txt | tail -n +2 > koik-1.txt
cat koikread.txt | tail -n +3 > koik-2.txt
cat koikread.txt | tail -n +4 > koik-3.txt
cat koikread.txt | tail -n +5 > koik-4.txt

paste koikread.txt koik-1.txt > paarid.txt
paste koikread.txt koik-2.txt >> paarid.txt
paste koikread.txt koik-3.txt >> paarid.txt
paste koikread.txt koik-4.txt >> paarid.txt

cat paarid.txt | grep '_D_' | grep _V_ > yv-kandidaadid.txt

cat yv-kandidaadid.txt | sed 's/^\([^/]*\/\/_V_[^/]*\/\/\)\t\([^/]*\/\/_D_[^/]*\/\/\) *$/\2\t\1/' > test.txt

cat test.txt | sed 's/^\([^+]*\)+[^\t]*\t\([^+]*\)+.*$/\1\t\2ma/' | tr -d "_" > VD.txt

















