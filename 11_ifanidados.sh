#!/bin/bash
# Este script muestra uso de expresiones condicionales
# Autor: Julian Lamadrid, jlamadrid, litocruz

edad=0
pais=""
pathArchivo=""

read -p "Ingrese edad: " edad
read -p "Ingrese pais: " pais
read -p "Ingrese path del archivo: " pathArchivo

echo -e "\nExpresiones condicionales con numeros"
if [ $edad -lt 10 ]; then
  echo "La persona es niño/a"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
  echo "La persona es adolescente"
else
  echo "La persona es mayor"
fi

echo -e "\nExpresiones condicionales con cadenas"
if [ $pais = "EEUU" ]; then
  echo "La persona es Yanki"
elif [ $pais = "Argentina" ] || [ $pais = "Colombia" ]; then
  echo "La persona es sudaka"
else
  echo "La persona es de paises orientales"
fi

echo -e "\nExpresiones condicionales con archivos"
if [ -d $pathArchivo ]; then
  echo "El directorio $pathArchivo existe"
else
  echo "El directorio $pathArchivo NO EXISTE"
fi
