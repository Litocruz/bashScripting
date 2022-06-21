#!/bin/bash
# Este script muestra uso de menu
# Autor: Julian Lamadrid, jlamadrid, litocruz

opcion=0

while :
do
  #Limpiar pantalla
  clear
  #Desplegar menu opciones
  echo "-----------------------------------------"
  echo "PGUTIL - Programa de utilidad de Postgres"
  echo "-----------------------------------------"
  echo "             MENU PRINCIPAL              "
  echo "1. Instalar Postgres"
  echo "2. Desinstalar Postgres"
  echo "3. Sacar un Respaldo"
  echo "4. Restaurar un Respaldo"
  echo "5. Exit"

  # Leer los datos del usuario - capturar info
  read -n1 -p "Ingrese opcion del [1-5]:" opcion

  #Validar opcion ingresada
  case $opcion in
    1)
      echo -e "\nInstalando Posgres..."
      sleep 3
      ;;
    2)
      echo -e "\nDesinstalando Posgres..."
      sleep 3
      ;;
    3)
      echo -e "\nDump de Posgres..."
      sleep 3
      ;;
    4)
      echo -e "\nRestore Dump de Posgres..."
      sleep 3
      ;;
    5)
      echo -e "\nSaliendo..."
      exit 0
      ;;
  esac
done
