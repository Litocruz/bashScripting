#!/bin/bash
# Este script resuelve reto4
#~Reto 4:
#~Crear un menú con las siguientes opciones:
#~
#~Procesos Actuales,
#~Memoria Disponible,
#~Espacio en Disco,
#~Información de Red,
#~Variables de Entorno Configuradas,
#~Información Programa
#~Backup información
#~Ingrese una opción.
#~Posterior a esto vamos  a recuperar la opción ingresada, validarla e imprimir la opción y el título de acuerdo a lo ingresado
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
  echo "1. Procesos Actuales"
  echo "2. Memoria Disponible"
  echo "3. Espacio en disco"
  echo "4. Informacion de red"
  echo "5. Variables de entorno configuradas"
  echo "6. Informacion Programa"
  echo "7. Backup Informacion"
  echo "8. Exit"

  # Leer los datos del usuario - capturar info
  read -n1 -p "Ingrese opcion del [1-8]:" opcion

  #Validar opcion ingresada
  case $opcion in
    1)
      echo -e "\nProcesos Actuales"
      ps -fax
      read -n1 -p "Presione una tecla para salir"
      ;;
    2)
      echo -e "\nMemoria Disponible"
      free -h
      read -n1 -p "Presione una tecla para salir"
      ;;
    3)
      echo -e "\nEspacio en disco"
      df -h
      read -n1 -p "Presione una tecla para salir"
      ;;
    4)
      echo -e "\nInformacion de red"
      ip a
      read -n1 -p "Presione una tecla para salir"
      ;;
    5)
      echo -e "\nVariables de entorno confioguradas"
      env
      read -n1 -p "Presione una tecla para salir"
      ;;
    6)
      echo -e "\nInformacion Programa"
      dpkg -l
      read -n1 -p "Presione una tecla para salir"
      ;;
    7)
      echo -e "\nBackup Informacion..."
      sleep 2
      ;;
    8)
      echo -e "\nSaliendo..."
      exit 0
      ;;
  esac
done
