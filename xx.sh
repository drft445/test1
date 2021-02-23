for i in $(cat target); do
curl "$i" -s | grep -o "var [-A-Za-z0-9\_]*\|name=[-A-Za-z0-9\_\'\"]*" | sed -e "s/var\s//" -e 's/^/\&/' -e 's/$/\=x/' -e "s/name=//" -e "s/'//g" -e "s/\"//g" > x.txt
echo "$i" > x1.txt
comb x1.txt x.txt >> target1
rm x1.txt x.txt
done

