#! /bin/bash
#Ejercicio 3 Shell que pide imprime por pantalla hasta el cinco usando un bucle for
clear

function ejer1(){
#Ejercicio 1 Shell que pide dos números y los suma.

clear
echo -n "Indica el primer número:";
read numero1;
echo -n "Indica el segundo número:";
read numero2;

#Utilizamos el comando expr para que sume las variables.
#Si hacemos $numero1+$numero2 las concatena.
resultado=`expr $numero1 + $numero2`;
resultado2=$numero1+$numero2;
echo "El resultado es: $resultado";
echo "El resultado sin expr es: $resultado2";
}
#############################################################################


function ejer2(){
#Ejercicio que indica el mayor de tres números dados
clear
echo -n "Indica el primer número:";
  read numero1;
echo -n "Indica el segundo número:";
  read numero2;
echo -n "Indica el tercer número:";
  read numero3;

if [ $numero1 -gt $numero2 ] && [ $numero1 -gt $numero3 ]; then
  echo "$numero1 es el mayor";
elif [ $numero2 -gt $numero1 ] && [ $numero2 -gt $numero3 ]; then
  echo "$numero2 es el mayor";
elif [ $numero3 -gt $numero1 ] && [ $numero3 -gt $numero2 ];then
  echo "$numero3 es el mayor";
else
  echo "Hay números iguales";
fi
}
#############################################################################

function ejer3(){
for i in 1 2 3 4 5 
do
  echo "Estamos en el ciclo $i";
done
}
#############################################################################

function ejer4(){
#bucle inverso a la manera tradicional

for (( i=5; i>0; i-- ))
do
  echo "El valor de i es $i";
done
}

#############################################################################
function ejer5(){
#Calculadora básica

echo -n "Introduce el primer número:";
read n1;
echo -n "Introduce el segundo número:";
read n2;
echo -n "indica la operación a realizar ( + - x / )";
read op;
case $op in 
  +) res=`expr $n1 + $n2`;;

  -) res=`expr $n1 - $n2`;;

  x) res=`expr $n1 * $n2`;;

  /) res=`expr $n1 / $n2`;;

  *) echo "opción inválida";;
esac
echo "El resultado es: $res";
}
##############################################################################

function ejer6(){
echo "mostrando información del sistema...";
sleep 1
echo " El nombre de usuario es" `whoami`", el directorio actual es " `pwd` ", y la fecha actual es: " `date` ;

}

###########################################################################################

function ejer7(){

if [ $# -eq 0 ]; then
echo "Uso del ejercio: soluciones.sh /ruta  nombre_de_fichero.sh"
else
 if [ -e  ];then
	echo
fi
}










#Estructura case que maneja el menú

echo "Soluciones a los ejercicios de shell scritps";
echo -n "Teclea el número del ejercicio a ejecutar [1-17]";
read opcion;
case  $opcion in
1) ejer1;;
2) ejer2;;
3) ejer3;;
4) ejer4;;
5) ejer5;;
6) ejer6;;
7) param=$1; 
   ejer7 $param;;
*)  echo "Opcion inválida";;
esac

