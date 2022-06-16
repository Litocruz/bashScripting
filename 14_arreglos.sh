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
echo "Tamaño Arreglo Numeros: ${arregloNumeros[3]}"
echo "Tamaño Arreglo Cadenas: ${arregloCadenas[3]}"
echo "Tamaño Arreglo Rangos: ${arregloRangos[3]}"

echo "Añadir y Eliminar Valores en un arreglo"
echo "Tamaño Arreglo Numeros: ${arregloNumeros[3]}"
echo "Tamaño Arreglo Cadenas: ${arregloCadenas[3]}"
echo "Tamaño Arreglo Rangos: ${arregloRangos[3]}"
