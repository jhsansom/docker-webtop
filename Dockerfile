FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine319

# set version label
ARG BUILD_DATE
ARG VERSION
ARG XFCE_VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="thelamer"


RUN \
  echo "**** install packages ****" && \
  apk add --no-cache \
    faenza-icon-theme \
    faenza-icon-theme-xfce4-appfinder \
    faenza-icon-theme-xfce4-panel \
    firefox \
    python3-tkinter \
    py3-pip \
    mousepad \
    ristretto \
    thunar \
    util-linux-misc \
    xfce4 \
    xfce4-terminal && \
  echo "**** cleanup ****" && \
  rm -f \
    /etc/xdg/autostart/xfce4-power-manager.desktop \
    /etc/xdg/autostart/xscreensaver.desktop \
    /usr/share/xfce4/panel/plugins/power-manager-plugin.desktop && \
  rm -rf \
    /config/.cache \
    /tmp/*

#RUN apk add --no-cache  chromium --repository=http://dl-cdn.alpinelinux.org/alpine/v3.10/main

# add local files
COPY /root /
COPY /listener-plugin /etc/listener-plugin
COPY /replaytool /etc/replaytool
COPY /policies.json /usr/lib/firefox/distribution/policies.json

RUN apk add npm
RUN npm install --global web-ext

#ENV CHROME_BIN=/usr/bin/chromium
#ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser
#ENV PATH="/usr/bin/chromedriver:${PATH}"

# ports and volumes
EXPOSE 3001

#USER root

#VOLUME /config
#COPY /.profile  /config/.profile