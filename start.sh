/usr/share/novnc/utils/novnc_proxy --listen 8081 --vnc localhost:5900 && x11 vnc -xkb -noxrecord -noxfixes -noxdamage -display :0 -auth /usr/sbin/lightdm/:0 -bg -ncache -ncache_cr -quiet -forever -create