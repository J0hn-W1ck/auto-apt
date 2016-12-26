#!/bin/bash
clear
if [ -f auto-apt.sh ];
then
chmod 777 auto-apt.sh
mv auto-apt.sh auto-apt
mv auto-apt /usr/local/bin
echo
echo -e "\e[1;32m AUTO-APT INSTALADO CORRECTAMENTE..\e[0m"
echo -e "\e[1;32m Ejecute desde la terminal el comando \e[0m\e[1;31msudo auto-apt\e[0m"
echo
else
echo
echo -e "\e[1;31m NO SE ENCUENTRA EL SCRIPT auto-apt.sh\e[0m"
echo
fi
exit 0
