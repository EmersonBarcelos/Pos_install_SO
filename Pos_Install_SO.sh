#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend &&
sudo rm /var/cache/apt/archives/lock &&

## Atualizando o repositório ##

sudo apt update &&

## Instalando pacotes e programas do repositório deb do ubuntu ##

sudo apt install python3 python3-pip docker docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak winff -y &&


## Download de programas externos ##

mkdir /home/$USER/Downloads/programas &&

cd /home/$USER/Downloads/programas &&

## Google Chrome ##
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&

## Simple Note ##
wget -c https://github.com/Automattic/simplenote-electron/releases/download/v1.8.0/Simplenote-linux-1.8.0-amd64.deb &&

## Team Viewer ##
wget -c https://download.teamviewer.com/download/linux/teamviewer_amd64.deb &&

sudo dpkg -i *.deb &&

## Instalando Flatpak e adicionado repositório Flathub ##

sudo apt install flatpak -y &&

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && 

## Instalando programas em flatpak ##

flatpak install flathub com.transissionbt.Transmission -y &&
flatpak install flathub us.zoom.Zoom -y &&
flatpak install flathub org.gimp.GIMP -y &&

## Instalando Snap ##

sudo apt install snapd -y &&

## Instalando programas em snap ## 

sudo snap install code --classic && 
sudo snap install mysql-workbench-community &&
sudo snap install atom --classic &&

## Instalando o Wine ## 

sudo apt install wine &&

## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y

