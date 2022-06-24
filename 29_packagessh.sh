#!/bin/bash
# Script para ejemplificar la transferencia de red con rsync 
# utilizando empaquetamiento para optimizar velocidad transferencia
# Autor: Julian Lamadrid, jlamadrid, litocruz

host=""
usuario=""

read -p "Ingresar el host: " host
read -p "Ingresar el usuario: " usuario
echo -e "\nEmpaquetando la carpeta para transferirla"
rsync -avz $(pwd) $usuario@$host:
