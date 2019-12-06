while [[ input=1 ]];
do
echo "Menu Kalkulator :"
echo "1. Kalkuator Loop"
echo "2. Exit"
echo -n "Pilih :"
read menu

case $menu in
	1)
	echo -n "Masukkan Bilangan Acuan :"
	read a
	echo -n "Masukkan Batasan Loop :"
	read l
	echo "Penjumlahan"
	for ((b=1;b<=l;b++));
	do
	let c=$a+$b
	echo "$a + $b = $c"
	done
	echo "Pengurangan"
        for ((b=1;b<=l;b++));
        do
        let d=$a-$b
        echo "$a - $b = $d"
        done 
	echo "Pembagian"
        for ((b=1;b<=l;b++));
        do
        let e=$a/$b
        echo "$a / $b = $e"
        done 
	echo "Perkalian"
        for ((b=1;b<=l;b++));
        do
        let f=$a*$b
        echo "$a * $b = $f"
        done 
	;;
	2)
	echo "TY"
	break;;

esac
done
