#!/bin/bash
# Este script muestra uso de funciones
# Autor: Julian Lamadrid, jlamadrid, litocruz

# Variables
opcion=0
fechaActual=`date +%Y%m%d`

# funciones
instalar_postgres () {
  echo "Verificar Instalacion postgres.."
  verifypostgres=$(wich psql)
#  if [ which psql 1>2 2>/dev/null ]; then
  if [ $? -eq 0 ]; then
    echo -e "Psgress ya se encuentra instalado"
  else
    read -s -p "Ingresar contraseña ROOT: "password
    read -s -p "Ingresar contraseña postgres: "passwordpostgres
    echo "$password" | sudo -S apt update
    echo "$password" | sudo -S apt install postgresql postgresql-contrib
    sudo -u postgres psql -C "ALTER USER postgres WITH PASSWORD '{$passwordpostgres}';"
    echo "$password" | sudo -S systemctl enable postgresql.service
    echo "$password" | sudo -S systemctl start postgresql.service
  fi
  read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."

}
desinstalar_postgres () {
  echo "Desinstalando postgres.."
  read -s -p "Ingresar contraseña ROOT: "password
  echo "$password" | sudo -S systemctl stop postgresql.service
  echo "$password" | sudo -S apt -y remove --purge postgresql\*
  echo "$password" | sudo -S rm -r /etc/postgresql
  echo "$password" | sudo -S rm -r /etc/postgresql-common
  echo "$password" | sudo -S rm -r /var/lib/postgresql
  echo "$password" | sudo -S userdel -r postgres
  echo "$password" | sudo -S groupdel postgresql
  read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}
sacar_respaldo () {
  echo "Listar bases de datos postgres"
  sudo -u postgres psql -c "\l"
  read -p "Elegir la base de datos a respaldar" DBdump
  echo -e "\n"
  if [ -d "$1" ]; then
    echo "Establecer permisos de directorio"
    read -p -s "Ingresar contraseña ROOT: "password
    echo "$password" | sudo -S chmod 755 $1
    echo "sacando respaldo.."
    sudo -u postgres pg_dump -Fc $DBdump > "$1/$DBdump$fechaActual.bak"
    echo "Respaldo realizado en $1/$DBdump$fechaActual.bak"
  else
    read -p -n 1 "El directorio $1 no existe, desea crearlo s/n?" crerdirectorio
    if [ $crerdirectorio = "s" ]; then
      mkdir $1
      [ $? -eq 0 ] && echo "Directorio creado con exito. Vuelva a ingresar para realizar respaldo" || echo "error %?"
    fi
  fi
  read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."

}
restaurar_respaldo () {
  echo "Listar respaldos"
  ls -la $1
  read -p "Elegir el respaldo a restaurar: " respaldoRestaurar
  echo -e "\n"
  echo "Listar bases de datos postgres"
  sudo -u postgres psql -c "\l"
  read -p "Elegir la base de datos a respaldar" DBdump
  echo -e "\n"
  echo "restaurando respaldo.."
  sudo -u postgres pg_restore -Fc -d $DBdump "$1/$respaldoRpestaurar"
  read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
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
      instalar_postgres
      ;;
    2)
      desinstalar_postgres
      ;;
    3)
      read -p "Directorio Backup: " directoriobackup
      sacar_respaldo $directoriobackup
      ;;
    4)
      read -p "Directorio Respaldo: " directoriorespaldo
      restaurar_respaldo $directoriorespaldo
      ;;
    5)
      echo -e "\nSaliendo..."
      exit 0
      ;;
  esac
done
