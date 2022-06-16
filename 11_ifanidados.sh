#!/bin/bash
# Este script muestra uso de if anidados
# Autor: Julian Lamadrid, jlamadrid, litocruz

notaclase=0
continua=""

echo "Ejemplo IF anidados"
read -n1 -p "Indique cual es su nota (1-9) " notaclase
echo -e "\n"
if [ $notaclase -ge 7 ]; then
  echo "Alumno aprobo "
  read -p "Va a continua en el proximo curso (s/n) " continua
  if [ $continua = "s" ]; then
    echo " Bienvenido al siguiente nivel"
  else
    echo " Gracias por elegirnos, esperamos verlo pronto"
  fi
else
  echo "Debe recursar"
fi

test
