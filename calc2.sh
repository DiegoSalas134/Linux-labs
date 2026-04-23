#!/bin/zsh
echo
echo 'Menu principal'
echo '---------------'
echo
echo '1- SUMA'
echo '2- RESTA'
echo '3- MULIPLICACION'
echo '4- DIVISION'
echo '5- SALIR'

echo 'Introduce la operacion a realizar: '
read opcion

opcion=${opcion//$'\r'/}

if (( opcion < 1 )) || (( opcion > 5 ))
then
	echo 'El numero debe de estar entre 1 y 5'
	exit 5
fi	

if (( opcion == 5 ))
then
	exit
fi


echo 'Introduce el primer numero: '
read n1

n1=${n1//$'\r'/}
echo 'Introduce el segundo numero: '
read n2

n2=${n2//$'\r'/}
case $opcion in
1)
	x=$(( n1 + n2 ))
	echo
	echo 'El resultado es: ' $x
	;;

2)	
	x2=$(( n1 - n2 ))
	echo
	echo 'El resultado es: ' $x2
	;;

3)	
	x3=$(( n1 * n2 ))
	echo
	echo 'El resultado es: ' $x3
	;;

4)
	x4=$(( n1 / n2 ))
	echo
	echo 'El resultado es: ' $x4
	;;	

*)	
	echo 'Error'
	;;
esac


echo 'Quieres usar la calculadora otra vez (1(si), 2(no)): '
read op

op=${op//$'\r'/}

if (( op == 1 ))
then
	calc2.sh
fi

