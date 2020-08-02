#!/bin/bash
#-----------HEADER-------------------------------------------------------------|
# AUTOR             : Edivan Carvalho <edivancarvalho2008@hotmail.com>
# HOMEPAGE          : https://github.com/edivancarvalho
# DATA DE CRIAÇÃO   : 02/08/2020 às 01:37 
# PROGRAMA          : SO - Fedora 31
# VERSÃO            : 1.0.0
# LICENÇA           : MIT
# PEQUENA DESCRIÇÃO : Instalação de Feramentas de Desenvolvimento 
#
# CHANGELOG :
#
#------------------------------------------------------------------------------|
# 
printf "Instalação do Docker no fedora" ; sleep 3
dnf install curl -y
curl -fsSl https://get.docker.com/ | sh

#adicionando usuario para ter acesso ao docker
# usermod -aG docker $(whoami)
# usermod -aG docker suporte

printf "o Fedora 31 mudou para o cgroup v2, sendo a primeira grande distribuição Linux a fazer isso\n" ; sleep 5 ;
echo
printf "O Docker não suporta o cgroup v2, portanto, não funciona na versão mais recente do Fedora\n" ; sleep 5 ;
echo
printf "por isso, temos que ativar o cgroup v1 executando o comando acima.\n" ; sleep 6
# Instalando o Grubby
dnf install grubby -y
grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0"

# start no Docker
systemctl start docker.service

# Ativando para inicializar junto com o sistema;
systemctl enable docker.service

# caso queria desabilitar faça:
#systemctl disable docker.service

# -- Para fazer o teste final reinicier seu Linux

printf "INSTALAÇÃO DO DOCKER FINALIZADA\n"
printf "POR FAVOR REINICIE O COMPUPATOR MANUALMENTE\n"
printf "--------------------------------------------"
printf "Depois fique a vontande em usar o DOCKER\n"
