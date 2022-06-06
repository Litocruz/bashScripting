#!/bin/bash
# Este script muestra como se realiza el paso de opciones sin parametros
# Autor: Julian Lamadrid, jlamadrid, litocruz

primer=$1
segun=$2

echo "Opcion 1 enviada: $primer "
echo "Opcion 2 enviada: $segun "
echo "Opciones enviadas: $* "
echo -e "\n"

while [ -n "$1" ]; do
  case "$1" in
    -a) echo "-a option";;
    -juan) echo "-juan option";;
    juan) echo "juan option";;
    *) echo "$1 noo es una opcion";;
  esac
  shift
done


