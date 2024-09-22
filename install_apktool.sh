#!/bin/bash

VERSION=${VERSION:=2.9.3}

wget -O /usr/local/bin/apktool "https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool"
wget -O /usr/local/bin/apktool.jar "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_${VERSION}.jar"
chmod +x /usr/local/bin/apktool
