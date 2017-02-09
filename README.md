# lubuntu-vnc-html5-java

https://hub.docker.com/r/abrahamb/lubuntu-vnc-html5-java/

Docker container image to use it as a desktop GUI

No password needed

The image include office tools (Galculator, Okular, Document Viewer, KolourPaint, AbiWord, Gnumeric), Xterm, Firefox, system tools.

Usage

docker run -d -t -i -p 5800:5800 -p 5900:5900 -p 6080:6080 abrahamb/lubuntu-vnc-html5-java

Then

𐎸 connect via noVNC (HTML5) using a web browser and the next address: http://localhost:6080

𐎸 connect via VNC client viewer localhost:5900

𐎸 connect via TightVNC (java) using a web browser and the next address: http://localhost:5800 (You'll need configure your java control panel and web browser)
