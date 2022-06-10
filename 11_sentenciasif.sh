#!/bin/bash
# Este script muestra como se usa la sentencia if else
# Autor: Julian Lamadrid, jlamadrid, litocruz

edad=0

echo "Ejemplo IF"
read -p "Indique cual es su edad -> " edad

if [ $edad -le 18 ]; then
  echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
  echo "La Persona es Adulta"
else
  echo "La persona es anciana"
fi


