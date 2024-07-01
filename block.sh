#!/bin/bash

# Path to your Python script
SCRIPT_PATH="$HOME/projects/terminalscripts/block.py"

if [ "$1" == "list" ]; then
	sudo python3 "$SCRIPT_PATH" list
else
	sudo python3 "$SCRIPT_PATH" "$1"
fi
