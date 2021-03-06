#!/bin/bash
#-----------HEADER-------------------------------------------------------------|
# AUTOR             : Edivan Carvalho <edivancarvalho2008@hotmail.com>
# HOMEPAGE          : https://github.com/edivancarvalho
# DATA DE CRIAÇÃO   : 02/08/2019 às 17:37 
# PROGRAMA          : SO - "Fedora 31 Python Classroom" para DevOps.
# VERSÃO            : 1.0.0
# LICENÇA           : MIT
# PEQUENA DESCRIÇÃO : Instalação de Feramentas de Desenvolvimento 
#
# CHANGELOG : Este documento relatar a instalação das ferramentas no Fedora31, a distribuição usada neste arquivo é "Fedora 32 Python Classroom",
#             link para Donwload: http://fedora-alt.c3sl.ufpr.br/releases/31/Labs/x86_64/iso/Fedora-Python-Classroom-Live-x86_64-31-1.9.iso
#
#------------------------------------------------------------------------------|
# informação sobre todo o sistema;
inxi -SCF

#  Atualização 
dnf upgrade -y

# Instalando a inteface CINNAMON no Fedora.
dnf install cinnamon -y

# Removendo todos os programas em java que já vem por padrão.
whereis java
# remove qualquer pasta de aparacer aqui;
rm -rf /usr/bin/java /usr/lib/java /etc/java /usr/share/java /usr/share/man/man1/java.1.gz
#ou 
rm -Rf /usr/bin/java
rm -Rf /usr/share/java
rm -Rf /usr/lib/java/
rm -Rf /usr/share/man/man1/java.1.gz

# Verificar novamente
whereis java
rm -Rf /etc/java
# Removendo o Java2html
whereis java2html 
rm -rf /usr/bin/java2html

# Como o LibreOffice ja vem junto precisara remove tambem
rpm -e libreoffice* -y
dnf remove libreoffice* -y
dnf upgrade -y

# Fazendo donload do oracle java
#https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html
#acessa e baixa a versao.
mkfir /tmp/software
cd /tmp/software || exit;
# fazer o donwload wget link
rpm -ivh jdk-8u251-linux-x64.rpm
java -version

# Ferramentas que uso;
dnf install nmap htop vim nload chromium unzip p7zip p7zip-plugins unrar -y

#--------------- Instalando o Netbeans 8.2
#fazer Donload no site https://netbeans.org/downloads/old/8.2/
# Para a pasta temporario /tmp/software
chmod +x netbeans-8.2-linux.sh
sh netbeans-8.2-linux.sh 

# Para remover o netbeans: entre no diretorio usuario:
cd ~/netbeans-8.2/ || exit;
# e depois faça:
bash uninstall.sh

# Sigar os passos pela interface grafica e escolhar o lugar onde o java esta instalado; basicamente será a ultima opção;

# Instalando o Mega.nz arquivo de diretorio online
#site https://mega.nz/sync e baixar a versao.

#Dependencias:
dnf install qt5 
dnf install cryptopp
dnf install libmediainfo
#ou 
dnf install qt5 cryptopp libmediainfo

# Entra na pasta Donwload e roda o comando;
cd /tmp/software || exit;
rpm -ivh megasync-Fedora_32.x86_64.rpm

#Instalando o Visual Studio Code;
#Fonte: https://code.visualstudio.com/docs/setup/linux
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
dnf install code

#Instalação do GitHub para Linux
#Acessa o link e baixa de acordo com a sua distri.
#https://github.com/shiftkey/desktop/releases/tag/release-2.4.1-linux2

# Instalar a dependencia libappindicator
dnf install libappindicator -y
rpm -ivh GitHubDesktop-linux-2.4.1-linux2.rpm 

#Caso queira ver o video da instalação do GitHub para Linux.
#https://youtu.be/CSyEYiG8sFI?list=PLHz_AreHm4dm7ZULPAmadvNhH6vk9oNZA

# Instalando reprodutor de video VLC
# @Fonte https://www.videolan.org/vlc/download-fedora.html

# Precisa adicionar o repositorio RPM FUSION.
#VERSAO=('rpm -E %fedora');
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y 
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
apt update -y
dnf install vlc

#   Ferramenta de partição de Disk
dnf install gnome-disk-utility -y

# Instalando o gerenciado de impressora.

dnf install  cups system-config-printer

#
echo '>------------------------------------- FIM-------------------------------------<'
#===============================================================================
