#!/bin/bash
LAPIS="$HOME/.lapis"
LINUX = "$LAPIS/installations/bin/compiler/linux" 

if [[ "$OSTYPE" == "linux-gnu" ]]; then

    if [[ -e "$HOME/.lapis" ]]; then
        yes | rm -r "$HOME/.lapis"
    fi

    git clone https://github.com/tm-ahad/lapis-deps.git $LAPIS
    rm -f "$LAPIS/installations/bin/assembler/windows"
    rm -f "$LAPIS/installations/bin/compiler/windows"

    if [[ -f $LINUX ]]; then
        mv -f $LINUX "/usr/bin/lapis"
    fi

    echo "Lapis is successfully installed on your machine."
else
    echo "This script is intended for Linux and darwin operating systems only."
    exit 1
fi

