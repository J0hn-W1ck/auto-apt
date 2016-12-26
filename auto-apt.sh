#!/bin/bash
clear 
echo -e "\e[1;32m_______ _____  _________________         _______ ________ ________\e[0m"
echo -e "\e[1;32m___    |__  / / /___  __/__  __ \        ___    |___  __ \___  __/\e[0m"
echo -e "\e[1;32m__  /| |_  / / / __  /   _  / / /__________  /| |__  /_/ /__  /   \e[0m"
echo -e "\e[1;32m_  ___ |/ /_/ /  _  /    / /_/ / _/_____/_  ___ |_  ____/ _  /    \e[0m"
echo -e "\e[1;32m/_/  |_|\____/   /_/     \____/          /_/  |_|/_/      /_/     \e[0m"
echo -e "\e[1;34mAutor :\e[0m \e[1;31mJohn-Wick\e[0m"
echo -e "\e[1;34mwww.youtube.com/channel/UCbtc0FBL8lzi5S3WkTzjS4w\e[0m : \e[1;31mSUSCRÍBETE\e[0m"
echo -e "\e[1;34mwww.facebook.com/profile.php?id=100014284386639\e[0m  : \e[1;31mAGREGAME\e[0m"
echo -e "\e[1;32mDIA :\e[0m $(date +%A;) \e[1;32mFECHA :\e[0m $(date +%d/%m/%Y;) \e[1;32mHORA :\e[0m $(date +%T;)"
echo -e "\e[1;32mUsuario :\e[0m" $(whoami;)
echo

{
    bar=" []*********************************************************** "
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
}
sleep 1
clear
echo -e "\e[1;32m*******************************\e[0m"
echo -e "\e[1;32m** ACTUALIZANDO SOURCES.LIST **\e[0m"
echo -e "\e[1;32m*******************************\e[0m"
sudo apt-get update 2> /dev/null
clear
echo
echo -e "\e[1;32m***************************************************************\e[0m"
echo -e "\e[1;32m** Actualizando el sistema, seleccione\e[0m  S/n \e[1;32mpara continuar.. **\e[0m"
echo -e "\e[1;32m***************************************************************\e[0m"
sudo apt-get -y upgrade
clear
echo
echo -e "\e[1;32m****************************\e[0m"
echo -e "\e[1;32m** Ejecutando dis-upgrade **\e[0m"
echo -e "\e[1;32m****************************\e[0m"
echo -e "\e[1;34mINFO:\e[0m"
echo -e "\e[1;31mapt-get dist-upgrade además de realizar la función de apt-get upgrade, también maneja 
inteligentemente los cambios de dependencias con las nuevas versiones de los paquetes y tratará de actualizar 
los paquetes más importantes a costa de los menos importantes, si es necesario. 
Por lo tanto, el comando apt-get dist-upgrade en realidad puede borrar algunos 
paquetes en casos raros pero necesarias.\e[0m"
sleep 1
sudo apt-get -y dist-upgrade
clear
echo
echo -e "\e[1;32m**********************************\e[0m"
echo -e "\e[1;32m** BUSCANDO ERRORES Y REPARANDO **\e[0m"
echo -e "\e[1;32m**********************************\e[0m"
{
    bar=" []*********************************************************** "
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
}
sleep 1
clear
echo
echo -e "\e[1;32m*********************************************\e[0m"
echo -e "\e[1;32m** Removiendo las dependencias incumplidas **\e[0m"
echo -e "\e[1;32m*********************************************\e[0m"
sleep 01
sudo apt-get -y autoremove
clear
echo
echo -e "\e[1;32m**************************\e[0m"
echo -e "\e[1;32m** Ejecutando autoclean **\e[0m"
echo -e "\e[1;32m**************************\e[0m"
sleep 01
sudo apt-get -y autoclean
clear
echo
echo -e "\e[1;32m******************************************\e[0m"
echo -e "\e[1;32m** ACTUALIZANDO SOURCES.LIST NUEVAMENTE **\e[0m"
echo -e "\e[1;32m******************************************\e[0m"
sleep 01
sudo apt-get update 2> /dev/null
clear
echo
echo -e "\e[1;32m*****************************\e[0m"
echo -e "\e[1;32m** Instalando dependencias **\e[0m"
echo -e "\e[1;32m*****************************\e[0m"
sleep 01
sudo apt-get -f -y install
clear
echo
echo -e "\e[1;32m*************************\e[0m"
echo -e "\e[1;32m** Espere.. Terminando **\e[0m"
echo -e "\e[1;32m*************************\e[0m"
{
    bar=" []*********************************************************** "
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
}
sleep 1
clear
echo
echo -e "\e[1;32m***************\e[0m"
echo -e "\e[1;32m** Limpiando **\e[0m"
echo -e "\e[1;32m***************\e[0m"
{
    bar=" []*********************************************************** "
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
}
sleep 1
clear
echo
echo -e "\e[1;32m*******************************************\e[0m"
echo -e "\e[1;32m** Su sistema esta limpio y actualizado. **\e[0m"
echo -e "\e[1;32m*******************************************\e[0m"
echo -e "\e[1;32mSaludos :\e[0m" $(whoami;)
exit 0
