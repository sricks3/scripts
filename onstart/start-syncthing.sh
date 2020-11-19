#!/bin/bash

if command -v syncthing &>/dev/null; then
	"$(command -v syncthing)" -no-browser -home="$HOME/.config/syncthing"
else
	echo "Syncthing not found"
fi
