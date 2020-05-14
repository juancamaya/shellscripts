#! /bin/bash
#Ejercicio 3 Shell que pide imprime por pantalla hasta el cinco usando un bucle for
clear

###############################################################################################
############################ Ejercicio 1 ######################################################
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
###############################################################################################
############################ Ejercicio 2 ######################################################

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
###############################################################################################
############################ Ejercicio 3 ######################################################

function ejer3(){
for i in 1 2 3 4 5 
do
  echo "Estamos en el ciclo $i";
done
}
###############################################################################################
############################ Ejercicio 4 ######################################################

function ejer4(){
#bucle inverso a la manera tradicional

for (( i=5; i>0; i-- ))
do
  echo "El valor de i es $i";
done
}
###############################################################################################
############################ Ejercicio 5 ######################################################
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
###############################################################################################
############################ Ejercicio 6 ######################################################

function ejer6(){
echo "mostrando información del sistema...";
sleep 1
echo " El nombre de usuario es" `whoami`", el directorio actual es " `pwd` ", y la fecha actual es: " `date` ;

}

###############################################################################################
############################ Ejercicio 7 ######################################################

function ejer7(){
#Primero controlamos que los parámetros sean correctos para que funcione
if [ $# -lt 1 ] ; then
  echo "Uso del ejercio: soluciones.sh /ruta/nombre_de_fichero.sh"
else
  if [ -e $1 ]; then
	echo "El fichero existe";
  else 
	echo "El fichero no existe";
  fi 
  
fi
}

###############################################################################################
############################ Ejercicio 8 ######################################################
#Acepta opciones desde la línea de comandos y las pasamos a la función desde la llamada a la función.
function ejer8(){
if [ $# -lt 1 ] ; then
  echo "Uso del ejercio: soluciones.sh -parametros [-c -d -v ]"
else
  if [ $1 == "-c" ]; then
	clear;
  elif [ $1 == "-d" ]; then
	ls -la;
  elif [ $1 == "-v" ]; then
	nano fichero.txt;
  else
	echo "Opción no válida. ";
  fi
fi
}
###############################################################################################
############################ Ejercicio 9 ######################################################
function ejer9(){
echo -n "Introduce /ruta/nombre_archivo";
read archivo;
echo -n "/ruta/nombre_archivo_nuevo"
read nombre;
if [ -f $archivo ]; then
  mv $archivo $nombre;
else
  echo "El archivo no existe, no se hará nada.";
fi
}

###############################################################################################
############################ Ejercicio 10 #####################################################

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
7) ruta=$1;
   ejer7 $ruta ;;
8) opcion=$1;
   ejer8 $opcion;;
9) ejer9;;
10 ejer10;;
*) echo "Opcion inválida";;
esac


###############################################################################################
############################ Ejercicio 11 #####################################################

#comprueba si existe el directorio /home/scripts


if [ -e /$HOME/scripts ]; then

echo "el directorio existe";
else
echo "El directorio no existe y será creado";
echo "Creando el directorio";
sleep 2000;
mkdir $HOME/scripts;
echo "Directorio creado";

fi

###############################################################################################
############################ Ejercicio 12 #####################################################
#!/bin/bash

#Programa que verifica que se recibe un solo argumento por línea de comandos.

# $0 representa el nombre del script
# $1 representa el primer argumento
# $2 representa el segundo argumento
#  y así sucesivamente
# $# representa el número de argumentos después del nombre.
# $* contiene todos los argumentos escritos guardados en una variable

if [ $# -eq 1 ]; then
echo "El número de argumentos es igual a uno";
else
echo "El número de argumentos es distinto a uno"
echo "Has escrito $# argumentos";

fi

