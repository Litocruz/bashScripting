#!/bin/bash
# Este script muestra uso de escritura en archivos
# Autor: Julian Lamadrid, jlamadrid, litocruz

echo "Archivos - Escritura"

echo "Valores con el comando echo" >> $1

#Adicion Multilinea
cat <<EOM>>$1
$2
EOM
