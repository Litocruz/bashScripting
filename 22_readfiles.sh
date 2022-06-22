#!/bin/bash
# Este script muestra uso de operaciones de archivos
# Autor: Julian Lamadrid, jlamadrid, litocruz

echo "Operaciones de Archivos"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts al directorio"
cp *.* backupScripts/
ls -l backupScripts/

echo -e "\nMover el directprop a otra ubicacion"
while read linea
do
  echo "$linea"
done < $1

