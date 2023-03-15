export USER="root"
x11vnc -display :0 -autoport -localhost -nopw -bg -xkb -ncache -ncache_cr -quiet -forever --create
startxfce4 :0
/usr/share/novnc/utils/novnc_proxy --vnc localhost:5900