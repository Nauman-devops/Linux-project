#!/bin/bash
# Simple File Manager Script

LOG_FILE="./logs/activity.log"

echo "Choose an option:"
echo "1. List files"
echo "2. Copy file"
echo "3. Move file"
echo "4. Search text in files"
read -p "Enter choice: " choice

case $choice in
  1)
    ls -lh
    ;;
  2)
    read -p "Enter source file: " src
    read -p "Enter destination: " dest
    cp $src $dest
    echo "$(date): Copied $src to $dest" >> $LOG_FILE
    ;;
  3)
    read -p "Enter source file: " src
    read -p "Enter destination: " dest
    mv $src $dest
    echo "$(date): Moved $src to $dest" >> $LOG_FILE
    ;;
  4)
    read -p "Enter text to search: " txt
    grep -rnw . -e "$txt"
    ;;
  *)
    echo "Invalid option"
    ;;
esac
