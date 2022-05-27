#!/bin/bash
ALIAS=tcn

if [ -z "$1" ]
then
    destpath="~/.local/bin"
else
    destpath="$1"
fi

echo "Insert your TELEGRAM_BOT_TOKEN."
read -s yourtoken
echo ""

echo "Insert your CHAT_ID"
read -s yourchatid
echo ""

export yourtoken
export yourchatid

mkdir -p ~/.local/share/teleclinotify
envsubst < config.sample > ~/.local/share/teleclinotify/config

myinstall () {
    cp teleclinotify $destpath 2>/dev/null && \
    ln -sf $destpath/teleclinotify $destpath/tcn
}

echo "Installing teleclinotify into ${destpath}..."
if ! eval myinstall
then
    echo "Error intalling teleclinotify into ${destpath}."
    echo "You may not have writing permission to ${destpath}."
    echo "Trying with sudo; CTRL+C to exit."
    sudo myinstall || echo "Failed."
fi