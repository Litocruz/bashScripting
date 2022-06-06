#!/bin/bash
# Script para revisar tipos de operadores
# Autor: julian Lamadrid

numA=10
numB=4

echo "Operadores Aritmeticos"
echo "Numero A=$numA y B=$numB"
echo "Sumar A y B = $((numA + numB))"
echo "Restart A y B = $((numA - numB))"
echo "Multiplicar A y B = $((numA * numB))"
echo "Dividir A y B = $((numA / numB))"
echo "Residuo A y B = $((numA % numB))"

# el argumento -e de echo nos permite usar los operadores /n /t
echo -e "\nOperadores Relacionales"
echo "Numero A=$numA y B=$numB"
echo "A > B = $((numA > numB))"
echo "A >= B = $((numA >= numB))"
echo "A < B = $((numA < numB))"
echo "A <= B = $((numA <= numB))"
echo "A == B = $((numA == numB))"
echo "A != B = $((numA != numB))"

echo -e "\nOperadores Asignacion"
echo "Numero A=$numA y B=$numB"
echo "Sumar A += B = $((numA += numB))"
echo "Restart A -=B = $((numA -= numB))"
echo "Multiplicar A *=B = $((numA *= numB))"
echo "Dividir A /=B = $((numA /= numB))"
echo "Dividir A %=B = $((numA /= numB))"

