mycomb() {
for i in ing.txt; do
curl "$i" -s | grep -o "var [-A-Za-z0-9\_]*" | sed -e "s/var\s//" -e 's/^/\&/' -e 's/$/\=/' > x.txt
echo "$i" > x1.txt
comb x1.txt x.txt >> 111
rm x1.txt x.txt
done
}
mycomb
