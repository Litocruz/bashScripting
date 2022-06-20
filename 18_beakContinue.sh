#!/bin/bash
# Este script muestra uso de break y continue
# Autor: Julian Lamadrid, jlamadrid, litocruz

echo "Sentencia break y continue"

for fil in $(ls);do
  for nombre in {1..4};do
    if [ $fil = "10_download.sh" ];then
      echo "1: $fill"
      break;
    elif [ $nombre -eq 2 ];then
      echo "2: $fil"
      continue;
    else
      echo "Nombre archivo: $fil _ $nombre"
    fi
  done
done
