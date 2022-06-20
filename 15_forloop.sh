#!/bin/bash
# Este script muestra uso de Iteracion for
# Autor: Julian Lamadrid, jlamadrid, litocruz

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de numeros"
for num in ${arregloNumeros[*]}
do
  echo "Numero: $num"
done

echo "Iterar en la lista de cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
  echo "Nombre: $nom"
done

echo "Iterar en Archivos"
for fil in *
do
  echo "Nombre archivo: $fil"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do
  echo "Nombre archivo: $fil"
done

echo "Iterar de la forma tradicional"
for ((i=1; i<10; i++))
do
  echo "Numero: $i"
done

