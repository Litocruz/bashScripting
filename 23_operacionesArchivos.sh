#!/bin/bash
# Este script muestra uso de lectura de archivos
# Autor: Julian Lamadrid, jlamadrid, litocruz

echo "Archivos - Lectura"

cat $1
echo -e "\nAlmacenar valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza variable especial IFS (Internal File Separator) para evitar que se recorten los espacion en blanco
echo -e "\nLeer archivos linea por linea con while"
while read linea
do
  echo "$linea"
done < $1

