#!/bin/bash
# Este script muestra uso de la sentencia case
# Autor: Julian Lamadrid, jlamadrid, litocruz

opcion=""

echo "Ejemplo sentencia case."
read -n1 -p "Ingresa una opcion de la A-Z o $ para salir: " opcion
echo -e "\n"
while [ ! $opcion = "$" ] ;do
  case $opcion in
    A|a) echo -e "\nSeleccionaste $opcion";;
    B|b) echo -e "\nSelecccionaste $opcion";;
    [C-E]|[c-e]) echo -e "\n Seleccionaste $opcion";;
    *) echo -e "\n No esta implementada la opcion $opcion";;
  esac
read -n1 -p "Ingresa una opcion de la A-Z o $ para salir: " opcion
done

