#!/bin/bash
# Este script muestra uso de archivos
# Autor: Julian Lamadrid, jlamadrid, litocruz

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
  mkdir -m 755 $2
  echo "Directorio creado con exito"
  ls -la $2
elif [ $1 = "f" ]; then
  touch $2
  echo "Archivo creado con exito"
  ls -la $2
else
  echo "Opcion incorrecta: $1"
fi

