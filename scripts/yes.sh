#!/bin/bash

# Function definitions
YES() {
    echo
    echo "YES" | boxes -d info
    echo
}

NO() {
    echo 
    echo "NO" | boxes -d critical 
    echo
}

FAIL() {
    echo "[ FAIL ] 넌 잘못했다"
    exit 2
}

# Variable definitions

# Main function
echo -n "선택해라(yes/no): "
read CHOICE

case $CHOICE in
    y|Y|yes|YES|Yes) YES  ;;
    n|N|NO|No|no)    NO   ;;
    *)               FAIL ;;
esac