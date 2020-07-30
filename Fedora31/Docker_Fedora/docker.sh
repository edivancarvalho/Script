#!/bin/bash

# Instalação do Docker no fedora
dnf install curl -y
curl -fsSl https://get.docker.com/ | sh

#adicionando usuario para ter acesso ao docker
# usermod -aG docker $(whoami)
# usermod -aG docker suporte

# start no Docker
systemctl start docker.service

# Ativando para inicializar junto com o sistema;
systemctl enable docker.service

# caso queria desabilitar faça:
#systemctl disable docker.service

# -- Para fazer o teste final reinicier seu Linux

echo "INSTALAÇÃO DO DOCKER FINALIZADA"