#!/bin/bash
#-----------HEADER-------------------------------------------------------------|
# AUTOR             : Edivan Carvalho <edivancarvalho2008@hotmail.com>
# HOMEPAGE          : https://github.com/edivancarvalho
# DATA DE CRIAÇÃO   : 02/08/2019 às 17:37 
# PROGRAMA          : SO - Fedora 32
# VERSÃO            : 1.0.0
# LICENÇA           : MIT
# PEQUENA DESCRIÇÃO : ICMP por Tempo X se segundos 
#
# CHANGELOG :
#
#------------------------------------------------------------------------------|

# Realizando o ping em um site ou ip a cada x segundos;
ping -i 30 sbt.com.br

# ou
ping -i 30 1.1.1.1

# Neste caso 30 esta se referindo ao tempo em segundos

