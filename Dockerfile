FROM kalilinux/kali-rolling:latest
# Set boring stuff
WORKDIR /
ENV DEBIAN_FRONTEND noninteractive
ENV TZ=America/New_York
ENV DISPLAY :1
# Add users
# Installing tools
RUN apt -y update && apt -y upgrade
RUN apt install -y git kali-desktop-xfce x11vnc bash
# Setup remote desktop
COPY xstartup /root/.vnc/xstartup
RUN chmod +x /root/.vnc/xstartup
# VNC ig is done? Now time for noVNC install BRUH
RUN apt install -y novnc
EXPOSE 6080/tcp
# yayayayayayayay UwU
COPY start.sh start.sh
CMD ["bash","start.sh"]