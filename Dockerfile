FROM kalilinux/kali-rolling:latest
# Set boring stuff
WORKDIR .
ENV DEBIAN_FRONTEND noninteractive
ENV TZ=America/New_York
ENV DISPLAY :1
# Add users
# Installing tools
RUN apt -y update && apt -y upgrade
RUN apt install -y git kali-desktop-xfce tightvncserver bash
RUN apt install -y python3-websockets python3-setuptools
RUN curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh | bash
RUN apt -y install nodejs npm
# Setup remote desktop
COPY xstartup /root/.vnc/xstartup
RUN chmod +x /root/.vnc/xstartup
# VNC ig is done? Now time for noVNC install BRUH
RUN git clone https://github.com/novnc/noVNC
RUN cd noVNC
RUN npm i -g @novnc/novnc
EXPOSE 6080/tcp
COPY start.sh start.sh
CMD ["bash","start.sh"]