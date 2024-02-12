#!/bin/bash

# Check if the OS is Linux
if [[ "$(OSTYPE)" == "linux_gnu" ]]; then
    if [[ -e "$HOME/.lapis" ]]; then
        rmdir "$HOME/.lapis"
    fi

    git clone https://github.com/tm-ahad/lapis-deps.git $HOME/.lapis/
    rm -r $HOME/.lapis/.git

    echo "Lapis is successfully installed on your machine."
else
    echo "This script is intended for Linux and darwin operating systems only."
    exit 1
fi

