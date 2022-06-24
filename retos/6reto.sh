#!/bin/bash
# Reto 6
# Modificar programa utilityHost.sh para empaquetar los logs generados 
# utilizando algún formato de compresión, colocarle una clave y pasarlo a otra máquina a través de SSH, 
# cuando se seleccione la opción 7. Backup de Información
# Autor: julian lamadrid, jlamadrid, litocruz

#declaracion variables
option=$2
comando=$1
cantidad=$#
menu=0
file="log-$(date +%Y%m%d%H%m%S).log"
host=""
usuario=""
path=""


while :
do
  #Limpiar pantalla
  clear
  #Desplegar menu opciones
  echo "-----------------------------------------"
  echo "         Programa de utilidades"
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
  read -n1 -p "Ingrese menu$ del [1-8]:" menu

  #Validar menu$ ingresada
  case $menu in
    1)
      echo -e "\nProcesos Actuales"
      echo "[$(date +%Y%m%d%H%m%S)] [$(whoami)] --- ps -fax" >> $file
      ps -fax
      read -n1 -p "Presione una tecla para salir"
      ;;
    2)
      echo -e "\nMemoria Disponible"
      echo "[$(date +%Y%m%d%H%m%S)] [$(whoami)] --- free -h" >> $file
      free -h
      read -n1 -p "Presione una tecla para salir"
      ;;
    3)
      echo -e "\nEspacio en disco"
      echo "[$(date +%Y%m%d%H%m%S)] [$(whoami)] --- df -h" >> $file
      df -h
      read -n1 -p "Presione una tecla para salir"
      ;;
    4)
      echo -e "\nInformacion de red"
      echo "[$(date +%Y%m%d%H%m%S)] [$(whoami)] --- ip a" >> $file
      ip a
      read -n1 -p "Presione una tecla para salir"
      ;;
    5)
      echo -e "\nVariables de entorno configuradas"
      echo "[$(date +%Y%m%d%H%m%S)] [$(whoami)] --- env " >> $file
      env
      read -n1 -p "Presione una tecla para salir"
      ;;
    6)
      echo -e "\nInformacion Programa"
      echo "[$(date +%Y%m%d%H%m%S)] [$(whoami)] --- dpkg -l " >> $file
      dpkg -l
      read -n1 -p "Presione una tecla para salir"
      ;;
    7)
      echo -e "\nBackup Informacion..."
      read -p "Ingrese el host/ip al cual transferir el backup:" host
      read -p "Ingrese el usuario: " user
      read -p "Ingrese el destino como path absoluto: " path
      zip -e shellCourse.zip *.log
      rsync -azv shellCourse.zip $user@$host:$path
      ;;
    8)
      echo -e "\nSaliendo..."
      exit 0
      ;;
  esac
done
