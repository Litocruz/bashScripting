#!/bin/bash
# Este script muestra como se realiza la descarga de info desde internet con wget se pasa url por argumento 1
# Autor: Julian Lamadrid, jlamadrid, litocruz

url=$1

echo "Descargar info de internet"
wget $url
