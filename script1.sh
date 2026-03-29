#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Arvind Kumar"
SOFTWARE="Python"

KERNEL=$(uname -r)
USER=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2)

echo "=============================="
echo " Open Source Audit"
echo "=============================="
echo "Student  : $STUDENT_NAME"
echo "Software : $SOFTWARE"
echo "Kernel   : $KERNEL"
echo "User     : $USER"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "Distro   : $DISTRO"
echo "License  : GPL (Linux)"