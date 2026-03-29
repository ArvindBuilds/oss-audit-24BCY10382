#!/bin/bash
# Script 2: Package Checker

PACKAGE="python3"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed"
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed"
fi

case $PACKAGE in
    python3) echo "Python is an open-source programming language";;
    git) echo "Git is version control system";;
    vlc) echo "VLC is media player";;
    firefox) echo "Firefox is web browser";;
    *) echo "Unknown package";;
esac