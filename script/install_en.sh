#!/bin/sh

#========================================================
# v0 script redirect to new repository
#========================================================

# new address https://raw.githubusercontent.com/nezhahq/scripts/refs/heads/v0/install.sh
if command -v wget >/dev/null 2>&1; then
    wget -O nezha.sh https://raw.githubusercontent.com/Ansore/nezha/refs/heads/main/script/nezha.sh
elif command -v curl >/dev/null 2>&1; then
    curl -o nezha.sh https://raw.githubusercontent.com/Ansore/nezha/refs/heads/main/script/nezha.sh
else
    echo "Error: wget or curl not found, please install one of them first"
    exit 1
fi

chmod +x nezha.sh

# run new script with original parameters
exec ./nezha.sh "$@"
