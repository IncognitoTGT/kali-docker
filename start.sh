export USER="root"
 x11vnc -display :1 -autoport -nopw -bg -xkb -ncache -ncache_cr -quiet -forever
/usr/share/novnc/utils/novnc_proxy --vnc localhost:5900