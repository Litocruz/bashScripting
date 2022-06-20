#!/bin/bash
# Este script muestra uso de Iteracion while
# Autor: Julian Lamadrid, jlamadrid, litocruz

numero=1

while [ $numero -ne 10 ]; do
  echo "Imprimiendo $numero veces"
  numero=$((numero +1))
done
