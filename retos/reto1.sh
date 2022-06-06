#!/bin/bash
# Reto 1
# Desarrollar un programa llamado utilityHost.sh, dentro de él vamos a declarar dos variables una llamada option,
# otra llamada result, vamos a inicializarles e imprimir sus valores.

# Resolucion: el script ejecuta el comando df y espera una opcion como argumento, pero la misma debe contener 
# un guion delante, si no lo tiene se muestra un mensaje en pantalla y se activa la opcion --help del comando df
# Autor: jlamadrid

#declaracion variables
option="--help"
result=""
cantidad=$#
# validacion de cantidad opciones
if [ "$cantidad" -lt 1 ] ; then
  echo "uso del script es el siguiente $0 -option"
  exit
fi

# validacion del guion delante argumento
echo "$1" | [ $(grep "^-") ] && option=$1 || echo "Debe ingresar el argumento con guion(-) delante"

result=$(df $option)

echo -e "option: $option\r"
echo "result: $result"
