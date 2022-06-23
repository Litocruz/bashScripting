#!/bin/bash
# Reto 5
#Modificar el archivo utilityHost.sh para escribir la información solicitada a un archivo de log 
#cuyo nombre será log donde yyyy representa el año, MM el mes, DD el día, HH la hora, mm los minutos y SS los segundos
# Autor: julian lamadrid, jlamadrid, litocruz

#declaracion variables
option=$2
comando=$1
cantidad=$#

echo "Este script recibe 2 parametros, el primero es el comando y el segundo un argumento antecedido por un -."
echo "El resultado sera guardado en un archivo log creado con la fecha actual."

# validacion de cantidad opciones
if [ "$cantidad" -lt 2 ] ; then
  echo "uso del script es el siguiente $0 comando -option"
  exit
fi

# validacion del guion delante argumento
echo "$option" | [ ! $(grep "^-") ] && echo "Debe ingresar el argumento con guion(-) delante; exit 1"

file="log-$(date +%Y%m%d%H%m%S).log"

echo -e "Log de Reto 5\n" >> $file
echo "$(date +%Y%m%d%H%m%S) --- comando: $comando  opcion: $option" >> $file
echo -e "Resultado:\n $($comando $option)" >> $file

echo "Nombre archivo: $file"
