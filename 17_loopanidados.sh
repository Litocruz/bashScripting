#!/bin/bash
# Este script muestra uso de Loops Anidados
# Autor: Julian Lamadrid, jlamadrid, litocruz

echo "Loops Anidados"

for fil in $(ls);do
  for nombre in {1..4};do
    echo "Nombre archivo: $fil _ $nombre"
  done
done
