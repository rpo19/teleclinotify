# TeleCLINotify

Simple bot to send notifications to telegram from cli.

## Setup
Run `./setup.sh ~/.local/bin`. This command assumes `~/.local/bin` is in your `$PATH`. You may also run `./setup.sh /usr/local/bin` but the setup would probablly ask for sudo priviledges.

## Usage
```
./run_a_long_script && teleclinotify Longscript successfully completed. || teleclinotify Longscript FAILED.
# or using the alias and the exit code to understand if successful or not
./run_a_long_script && tcn -e $? [message]
```

## How to get your chat id
- Start a chat with a bot and send any message.
- Make an HTTP request to the getUpdates API:
```
# e.g with curl
# replace TELEGRAM_BOT_TOKEN or set it correctly
# jq helps formatting the json but it is not vital
curl https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/getUpdates | jq
```
- Extract the chat id from the response-
