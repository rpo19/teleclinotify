#!/bin/bash
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