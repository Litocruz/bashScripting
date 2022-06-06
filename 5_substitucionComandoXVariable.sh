#!/bin/bash
# Script para revisar como ejecutar comandos dentro de un script y alamcenar en una variable
# para su posterior utilizacion
# Autor: julian Lamadrid

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "Ubicacion Actual: $ubicacionActual"
echo "Info kernel: $infoKernel"
