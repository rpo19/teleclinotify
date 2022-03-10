# TeleCLINotify

Simple bot to send notification to telegram from cli.

## Setup
Run `./setup.sh ~/.local/bin`. This command assumes `~/.local/bin` is in your `$PATH`. You may also run `./setup.sh /usr/local/bin` but the setup would probablly ask for sudo priviledges.

## Usage
```
./run_a_long_script && teleclinotify Longscript successfully completed. || teleclinotify Longscript FAILED.
```