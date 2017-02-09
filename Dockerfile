FROM ubuntu

MAINTAINER Abraham Bribiesca

RUN apt-get update
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y keyboard-configuration
RUN unset DEBIAN_FRONTEND
RUN apt-get install -y lubuntu-default-settings
RUN echo "deb http://archive.ubuntu.com/ubuntu/ xenial-updates multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu/ xenial multiverse" >> /etc/apt/sources.list
RUN apt-get update -y && apt-get dist-upgrade -y
RUN apt-get install -y \
        vnc-java\
        xvfb\
        abiword anacron\
        busybox-initramfs\
        cups-core-drivers\
        galculator\
        gsfonts\
        leafpad\
        lxpanel-indicator-applet-plugin\
        lxterminal\
        qpdf\
        qt-at-spi\
        unzip\
        update-inetd\
        firefox\
        okular\
        kolourpaint4\
        xterm\
        lxtask\
        netstress\
        gnumeric\
        gnumeric-plugins-extra\
        gnome-characters\
        xpad\
        lxsession\
        lxsession-edit\
        git\
        libnet-ifconfig-wrapper-perl\
        wget\
        system-tools-backends
RUN mkdir /root/noVNC
RUN git clone https://github.com/novnc/noVNC.git /root/noVNC/
RUN wget https://raw.githubusercontent.com/AbrahamBribi/lubuntu-vnc-html5-java/master/startup.sh
RUN mv startup.sh /root/
RUN chmod 0755 /root/startup.sh 
CMD /root/startup.sh
