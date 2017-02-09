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
RUN apt-get install -y x11vnc\ 
	vnc-java\
	xvfb\
	abiword anacron\
	apt-utils\
	busybox-initramfs\
	cups-core-drivers\
	fonts-freefont-ttf fonts-guru fonts-guru-extra fonts-kacst fonts-kacst-one fonts-khmeros-core fonts-lao fonts-liberation fonts-lklug-sinhala fonts-lohit-guru fonts-nanum fonts-noto-cjk fonts-sil-abyssinica fonts-sil-padauk fonts-symbola fonts-takao-pgothic fonts-thai-tlwg fonts-tibetan-machine fonts-tlwg-garuda fonts-tlwg-garuda-ttf fonts-tlwg-kinnari fonts-tlwg-kinnari-ttf fonts-tlwg-laksaman fonts-tlwg-laksaman-ttf fonts-tlwg-loma fonts-tlwg-loma-ttf fonts-tlwg-mono fonts-tlwg-mono-ttf fonts-tlwg-norasi fonts-tlwg-norasi-ttf fonts-tlwg-purisa fonts-tlwg-purisa-ttf fonts-tlwg-sawasdee fonts-tlwg-sawasdee-ttf fonts-tlwg-typewriter fonts-tlwg-typewriter-ttf fonts-tlwg-typist fonts-tlwg-typist-ttf fonts-tlwg-typo fonts-tlwg-typo-ttf fonts-tlwg-umpush fonts-tlwg-umpush-ttf fonts-tlwg-waree fonts-tlwg-waree-ttf galculator gsfonts leafpad lxpanel-indicator-applet-plugin lxterminal make linux-base lm-sensors python-apt python-apt-common python-aptdaemon python-aptdaemon.gtk3widgets python-chardet python-dbus python-debian python-defer python-gi python-pkg-resources python-psutil python-pysqlite2 python-six python3-apport python3-apt python3-aptdaemon python3-aptdaemon.gtk3widgets python3-aptdaemon.pkcompat python3-bs4 python3-cairo python3-chardet python3-commandnotfound python3-cups python3-cupshelpers python3-dbus python3-debian python3-defer python3-distupgrade python3-gdbm python3-gi python3-gi-cairo python3-html5lib python3-lxml python3-pexpect python3-pil python3-pkg-resources python3-problem-report python3-ptyprocess python3-pycurl python3-renderpm python3-reportlab python3-reportlab-accel python3-requests python3-six python3-software-properties python3-systemd python3-update-manager python3-urllib3 python3-xdg python3-xkit qdbus qpdf qt-at-spi qtchooser qtcore4-l10n qttranslations5-l10n synaptic syslinux system-tools-backends tcpd unzip update-inetd firefox okular kolourpaint4 xterm lxtask netstress gnumeric gnumeric-plugins-extra gnome-characters xpad lxsession lxsession-edit git libnet-ifconfig-wrapper-perl wget
RUN mkdir /root/noVNC
RUN git clone https://github.com/novnc/noVNC.git /root/noVNC/
RUN wget http://192.168.1.7/tempo/startup.sh
RUN mv startup.sh /root/
RUN chmod 0755 /root/startup.sh 
CMD /root/startup.sh
