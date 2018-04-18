FROM ubuntu:bionic
ENV DEBIAN_FRONTEND noninteractive
LABEL maintainer "Renwu Gao <gilyou.public@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget
    
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && dpkg -i google-chrome-stable_current_amd64.deb
RUN wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/57.0b10/linux-x86_64/ja/firefox-57.0b10.tar.bz2 \
    && tar -xvf firefox-57.0b10.tar.bz2
RUN wget https://dist.torproject.org/torbrowser/7.0.7/tor-browser-linux64-7.0.7_en-US.tar.xz \
    && tar tor-browser-linux64-7.0.7_en-US.tar.xz
RUN wget https://desktop-download.mendeley.com/download/apt/pool/main/m/mendeleydesktop/mendeleydesktop_1.18-stable_amd64.deb \
    && dpkg -i mendeleydesktop_1.18-stable_amd64.deb
