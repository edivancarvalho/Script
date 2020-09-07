#!/bin/bash
#
# Instatação do virtualBox no Fedora 31;

# Efetuar o donwload do virtual box no site oficial;

# Dependecias;
dnf install SDL
dnf install kernel-devel kernel-devel-5.7.15-100.fc31.x86_64

rpm -ivh VirtualBox-6.1-6.1.14_140239_fedora31-1.x86_64.rpm 
