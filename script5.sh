#!/bin/bash
# Script 5: Manifesto Generator

echo "Answer these questions"

read -p "Tool you use daily: " TOOL
read -p "Freedom means: " FREEDOM
read -p "What will you build: " BUILD

DATE=$(date)
FILE="manifesto.txt"

echo "Open Source Manifesto" > $FILE
echo "Date: $DATE" >> $FILE
echo "I use $TOOL daily." >> $FILE
echo "Freedom means $FREEDOM to me." >> $FILE
echo "I will build $BUILD and share it." >> $FILE

echo "Saved in $FILE"
cat $FILE