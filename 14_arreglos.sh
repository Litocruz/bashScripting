#!/bin/bash
# Este script muestra uso de arreglos 
# Autor: Julian Lamadrid, jlamadrid, litocruz

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Ortega Francescolli Gallardo litocruz)
arregloRangos=({A..Z} {10..20})

echo "Imprimir valores"
echo "Arreglo Numeros: ${arregloNumeros[*]}"
echo "Arreglo Cadenas: ${arregloCadenas[*]}"
echo "Arreglo Rangos: ${arregloRangos[*]}"

echo "Imprimir tamaño arreglos"
echo "Tamaño Arreglo Numeros: ${#arregloNumeros[*]}"
echo "Tamaño Arreglo Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Arreglo Rangos: ${#arregloRangos[*]}"

echo "Imprimir posicion 3 de los arreglos "
echo "Posicion 3 Arreglo Numeros: ${arregloNumeros[3]}"
echo "Posicion 3 Arreglo Cadenas: ${arregloCadenas[3]}"
echo "Posicion 3 Arreglo Rangos: ${arregloRangos[3]}"

echo "Añadir y Eliminar Valores en arreglo numeros"
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo Numeros: ${arregloNumeros[*]}"
echo "Tamaño Arreglo Numeros: ${#arregloNumeros[*]}"
echo "Posicion 0 Arreglo Numeros: ${arregloNumeros[0]}"
echo "Posicion 1 Arreglo Numeros: ${arregloNumeros[1]}"
echo "Posicion 5 Arreglo Numeros: ${arregloNumeros[5]}"
echo "Posicion 6 Arreglo Numeros: ${arregloNumeros[6]}"
