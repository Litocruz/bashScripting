#!/bin/bash
# Este script muestra uso de operaciones de archivos
# Autor: Julian Lamadrid, jlamadrid, litocruz

echo "Operaciones de Archivos"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts al directorio"
cp *.* backupScripts/
ls -l backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicacion: $HOME"
mv backupScripts $HOME

echo -e "\Eliminar los archivos .txt"
rm *.txt
