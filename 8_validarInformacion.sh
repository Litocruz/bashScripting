#!/bin/bash
# Este script valida datos Personales usando expresiones regulares
# Autor: Julian Lamadrid, jlamadrid, litocruz

DNIREGEX='^[0-9]{8}$'
PAISREGEX='^AR|ES|US$'
NACREGEX='^(19|20)([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1]))'

echo "expresiones Regulares"
read -p "Ingrese su DNI: " DNI
read -p "Escriba Su PAIS (Abreviatura 2 MAYUSCULAS): " PAIS
read -p "fecha nacimiento [YYYYMMDD]: " NAC
echo -e "\n"
# validar dni
[[ $DNI =~ $DNIREGEX ]] && echo "OK: $DNI" || echo "DNI incorrecto"
# validar pais
[[ $PAIS =~ $PAISREGEX ]] && echo "OK: $PAIS" || echo "PAIS incorrecto"
# validar dni
[[ $NAC =~ $NACREGEX ]] && echo "OK: $NAC" || echo "Fecha Nacimiento incorrecta"


