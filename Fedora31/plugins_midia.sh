# Esse é pra quem faz curso na Udemy e os videos não rodam.
#
# Para esta usando assistindo as videos aulas, parademente  udemy roda javascript so conseguir resolver a repodução do video seguindo estaas etapas:

# @fonts https://docs.fedoraproject.org/en-US/quick-docs/assembly_installing-plugins-for-playing-movies-and-music/
# 1° 
dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y

# Passo 2°
dnf install lame\* --exclude=lame-devel -y

#passo 3°
dnf group upgrade --with-optional Multimedia -y

#caso queria instalar o VLC faça:
dnf install vlc -y