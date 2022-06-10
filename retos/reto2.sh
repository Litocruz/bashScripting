#!/bin/bash
# Reto 2
# Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos; 
# y posterior imprima toda la información.
# Resolucion: 
# Autor: julian lamadrid, jlamadrid, litocruz

# funciones
function imprimir {
  echo "$1"
}
function mensajeError {
  echo "El valor ingresado: $1, no cumple los requisitos"
}

# declaracion variables
nombreRegex='^([A-z]{2,})$'
apellidoRegex='^([A-z]{2,})$'
edadRegex='^([1-9]{1,3})|[1-9]{3}$'
direccionRegex='^([A-z]*)'
telefonoRegex='^[0-9]{10}'

# Validadciones
read -p "Ingrese su nombre: " nombre  
while ([[ ! $nombre =~ $nombreRegex ]])
do
  mensajeError $nombre 
  read -p "Ingrese su nombre: " nombre  
done

read -p "Ingrese su apellido: " apellido
while ([[ ! $apellido =~ $apellidoRegex ]])
do
  mensajeError $apellido 
  read -p "Ingrese su apellido: " apellido  
done

read -p "Ingrese su edad: " edad
while ([[ ! $edad =~ $edadRegex ]])
do
  mensajeError $edad 
  read -p "Ingrese su edad: " edad  
done

read -p "Ingrese su direccion: " direccion
while ([[ ! $direccion =~ $direccionRegex ]])
do
  mensajeError $direccion 
  read -p "Ingrese su direccion: " direccion  
done

read -p "Ingrese su telefono de la forma 261 (3|4|5|6)xxyyzz : " telefono
while ([[ ! $telefono =~ $telefonoRegex ]])
do
  mensajeError $telefono 
  read -p "Ingrese su telefono: " telefono  
done

echo -e "\nLos datos ingresados son:"
imprimir $nombre
imprimir $apellido
imprimir $edad
imprimir $direccion
imprimir $telefono
#[[ $apellido =~ $apellidoRegex ]] && imprimir $apellido || mensajeError $apellido
#[[ $edad =~ $edadRegex ]] && imprimir $edad || mensajeError $edad
#[[ $direccion =~ $direccionRegex ]] && imprimir $direccion || mensajeError $direccion
#[[ $telefono =~ $telefonoRegex ]] && imprimir $telefono || mensajeError $telefono


