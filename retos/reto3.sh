#!/bin/bash
# Reto 3
# 1- Solicitar que se ingrese un valor del 1 al 5.
# 2- Según el valor ingresado, hacer la validación utilizando las condicionales e imprimir el resultado.
# 3- Construir expresiones de validación numéricas, cadenas y archivos según la opción ingresada.
# Resolucion: 
# Autor: julian lamadrid, jlamadrid, litocruz

# funciones
function imprimir {
  echo "$1"
}
function mensajeError {
  echo "El valor ingresado: $1, no esta en las opciones"
}
function mostrarOpciones {
  echo -e "\nSeleccione una de las siguientes Opciones"
  echo "-----------------------------------------"
  echo "1- Validacion Numerica"
  echo "2- Validacion de Nombres"
  echo "3- Validacion de Archivos"

}
# declaracion variables
valorRegex='^([1-3])$'
numeroRegex='\d'
nombreRegex='(^[A-z]{1})\w'
archivoRegex='(\w{1,})(\.)([a-z]{2,4})$'
#/w = [a-zA-z0-9_]
#/d = [0-9]
#/i CaseInsensitive
# Validadciones
mostrarOpciones
read -p "Ingrese un valor del 1 al 3: " valor
while [[ ! $valor =~ $valorRegex ]]
do
  mensajeError $valor 
  mostrarOpciones
  read -p "Ingrese un valor del 1 al 3: " valor
done

case "$valor" in
  1) echo "Seleccionaste opcion 1"
  read -p "Ingrese un valor numerico: " numero
  if [[ $numero =~ $numeroRegex ]]; then
    echo "El numero ingresado es $numero"
  else
    echo "El numero ingresado no es un numero: $numero"
  fi
  ;;
  2) echo "Seleccionaste opcion 2"
  read -p "Ingrese un nombre: " nombre
  [[ $nombre =~ $nombreRegex ]] && echo "El nombre ingresado es $nombre" || echo "No es un Nombre"
  ;;
  3) echo "Seleccionaste opcion 3"
    read -p "Ingrese el path y nombre de un archivo con extension): " archivo
    while ([[ ! $archivo =~ $archivoRegex ]] || [ ! -f $archivo ]); do
    echo "El formato del nombre del archivo es incorrecto o el archivo no exite: $archivo"
    read -p "Ingrese el path y nombre de un archivo con extension: " archivo
  done
  echo "El nombre del archivo ingresado es $archivo"
  ;;
  *) 
    mensajeError $valor 
    mostrarOpciones
    read -p "Ingrese un valor del 1 al 3: " valor
    ;;
esac



#echo -e "\nLos datos ingresados son:"
#imprimir $nombre
#imprimir $apellido
#imprimir $edad
#imprimir $direccion
#imprimir $telefono
##[[ $apellido =~ $apellidoRegex ]] && imprimir $apellido || mensajeError $apellido
##[[ $edad =~ $edadRegex ]] && imprimir $edad || mensajeError $edad
##[[ $direccion =~ $direccionRegex ]] && imprimir $direccion || mensajeError $direccion
##[[ $telefono =~ $telefonoRegex ]] && imprimir $telefono || mensajeError $telefono
#
#
