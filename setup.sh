#!/bin/bash
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

echo "Installing teleclinotify into ${destpath}..."
if ! cp teleclinotify $destpath 2>/dev/null
then
    echo "Error intalling teleclinotify into ${destpath}."
    echo "You may not have writing permission to ${destpath}."
    echo "Trying with sudo; CTRL+C to exit."
    sudo cp teleclinotify $destpath 2>/dev/null || echo "Failed."
fi