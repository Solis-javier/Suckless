# DWM con fullgaps y sytrayStatus2D.6.4
# suckless
---
1-Instalar Dwm creando la carpeta suckless en el /home/user/suckless
2-en la ruta /usr/share/xsessions
crea el archivo dwm.desktop y copiar y pegar
---
[Desktop Entry]
Encoding=UTF-8
Name=Dwm
Comment=Dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession 
---
3-crear una carpeta .dwm en la ruta
/home/user/
creamos un enlace
ln -sf ~/suckless/dwm/autostart.sh ~/.dwm

4- Retocar y acomodar el autostart.sh
la carga del wallpapers etc..

