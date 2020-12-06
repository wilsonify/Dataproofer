FROM debian:jessie

RUN apt-get update && \
apt-get install -y \
x11-apps \
wget \
unzip \
libgtk2.0-0 \
libnotify-dev \
libgconf-2-4 \
libnss3 \
libcanberra-gtk-module && \
rm -rf /usr/share/doc/* && \
rm -rf /usr/share/info/* && \
rm -rf /tmp/* && \
rm -rf /var/tmp/*

RUN wget https://github.com/dataproofer/Dataproofer/releases/download/v1.0.0/Dataproofer-linux-x64.zip
RUN unzip Dataproofer-linux-x64.zip

WORKDIR Dataproofer-linux-x64
RUN wget https://github.com/dataproofer/Dataproofer/releases/download/v1.0.0/sample-datasets.zip
RUN unzip sample-datasets.zip

RUN useradd -ms /bin/bash user
USER user
CMD ./Dataproofer
