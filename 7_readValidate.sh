#!/bin/bash
# script para capturar infomacion desde el teclado y validarla (read) y uso variable $REPLY

# Autor: Julian Lamadrid, jlamadrid, litocruz
a="RIVER PLATE"
b="otro"

echo "Complete formulario"

echo -e "\na: $a\nb: $b"
read -n1 -p "Seleccione opcion correcta: "
option=$REPLY
echo -e "\n " 

read -n10 -p "Ingrese nombre del idolo (maximo 10 caracteres): " 
idolo=$REPLY
echo -e "\n " 

read  -n10 -s -p "Ingrese nombre del idolo (maximo 10 caracters) del equipo contrario: " idolosecreto
echo -e "\n " 

echo "Usted selecciono la opcion:  "$option
echo "  idolo: $idolo"
echo "  idolo secreto: $idolosecreto"


