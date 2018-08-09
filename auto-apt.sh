#!/bin/bash
clear 
echo -e "\e[1;36m				          _________________________________________________________________________________________\e[0m"
echo -e "\e[1;36m				         |\e[1;33m               _______ _____  _________________         _______ ________ ________        \e[1;36m| \e[0m"
echo -e "\e[1;36m				         |\e[1;33m               ___    |__  / / /___  __/__  __ \        ___    |___  __ \___  __/        \e[1;36m| \e[0m"
echo -e "\e[1;36m				         |\e[1;33m               __  /| |_  / / / __  /   _  / / /__________  /| |__  /_/ /__  /           \e[1;36m| \e[0m"
echo -e "\e[1;36m				         |\e[1;33m               _  ___ |/ /_/ /  _  /    / /_/ / _/_____/_  ___ |_  ____/ _  /            \e[1;36m| \e[0m"
echo -e "\e[1;36m				         |\e[1;33m               /_/  |_|\____/   /_/     \____/          /_/  |_|/_/      /_/             \e[1;36m| \e[0m"
echo -e "\e[1;36m				         |\e[1;33m        Autor.........................:John-Wick  V0.3                                   \e[1;36m| \e[0m"
echo -e "\e[1;36m				         |\e[1;33m        Contacto................:hablemosdehacking@gmail.com:                            \e[1;36m| \e[0m"
echo -e "\e[1;36m				         |\e[1;33m        Dia.........................:$(date +%A;) Fecha: $(date +%d/%m/%Y;) Hora: $(date +%T)             \e[1;36m|\e[0m"
echo -e "\e[1;36m				         |\e[1;33m        Usuario.........................: $(whoami;)                                           \e[1;36m|\e[0m"
echo -e "\e[1;36m				         |\e[1;33m        Maquina.........................: $(uname -n)                                     \e[1;36m|\e[0m"
echo -e "\e[1;36m				         |\e[1;33m                                                                                         \e[1;36m|\e[0m"
echo -e "\e[1;36m				         |#########################################################################################\e[1;36m|\e[0m"
echo -e "\e[1;36m				         |_________________________________________________________________________________________\e[1;36m|\e[0m"
echo
sleep 1
echo -e "\e[1;31m[+]\e[0;30m \e[42m** ACTUALIZANDO LA LISTA DE REPOSITORIOS.. **\e[0m";sleep 1
sudo apt update
echo -e "\e[1;31m[+]\e[0;30m \e[42m** DESCARGANDO Y ACTUALIZANDO EL SISTEMA.. **\e[0m";sleep 1
sudo apt -y upgrade
echo -e "\e[1;31m[+]\e[0;30m \e[42m** EJECUTANDO DIS-UPGRADE.. **\e[0m"
echo 
echo -e "\e[1;31m[+]\e[0;30m \e[42m** NOTA: \e[0m"
echo -e "\e[1;31m[+]\e[0;30m \e[42m**apt-get dist-upgrade además de realizar la función de apt-get upgrade, también maneja inteligentemente      \e[0m"
echo -e "\e[0;30m\e[42m los cambios de dependencias con las nuevas versiones de los paquetes y tratará de actualizar                     \e[0m"
echo -e "\e[0;30m\e[42m todos los paquetes más importantes a costa de los menos importantes, si es necesario.                            \e[0m" 
echo -e "\e[1;31m[+]\e[0;30m \e[42m**Por lo tanto, el comando apt-get dist-upgrade en realidad puede borrar algunos                              \e[0m"
echo -e "\e[0;30m\e[42m paquetes en casos raros pero necesarias..                                                                        \e[0m"
sleep 3
sudo apt -y dist-upgrade
echo -e "\e[1;31m[+]\e[0;30m \e[42m** BUSCANDO ERRORES Y REPARANDO. **\e[0m"; sleep 2
echo
echo -e "\e[1;31m[+]\e[0;30m \e[42m** REMOVIENDO DEPENDENCIAS IMCUNPLIDAS.. **\e[0m"
sudo apt -y autoremove
echo -e "\e[1;31m[+]\e[0;30m \e[42m** EJECUTANDO AUTOCLEAN.. **\e[0m"
sudo apt -y autoclean
echo -e "\e[1;31m[+]\e[0;30m \e[42m** ACTUALIZANDO SOURCES.LIST NUEVAMENTE. **\e[0m"
sudo apt update
echo -e "\e[1;31m[+]\e[0;30m \e[42m** Instalando dependencias  incumplidas **\e[0m"
sudo apt -f -y install
echo
echo -e "\e[1;31m[+]\e[0;30m \e[42m** Su sistema esta actualizado correctamente..!! **\e[0m"
sleep 5
exit
