#!/bin/bash
# Este script muestra uso de funciones
# Autor: Julian Lamadrid, jlamadrid, litocruz

# Variables
opcion=0

# funciones
instalar_posgress () {
  echo "Instalando posgress.."
}
desinstalar_posgress () {
  echo "desinstalando posgress.."
}
sacar_respaldo () {
  echo "Directorio backup: $1"
  echo "sacando respaldo.."
}
restaurar_respaldo () {
  echo "Directorio respaldo: $1"
  echo "restaurando respaldo.."
}

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
  read -n1 -p "Ingrese opcion del [1-5]: " opcion
  echo -e "\n"
  #Validar opcion ingresada
  case $opcion in
    1)
      instalar_posgress
      sleep 3
      ;;
    2)
      desinstalar_posgress
      sleep 3
      ;;
    3)
      read -p "Directorio Backup: " directoriobackup
      sacar_respaldo $directoriobackup
      sleep 3
      ;;
    4)
      read -p "Directorio Respaldo: " directoriorespaldo
      restaurar_respaldo $directoriorespaldo
      sleep 3
      ;;
    5)
      echo -e "\nSaliendo..."
      exit 0
      ;;
  esac
done
