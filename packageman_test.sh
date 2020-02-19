#!/bin/bash

# Attempt to determine what package manager is used on this system.
if [[ -e $(which apt) ]]; then
  pm=apt
elif [[ -e $(which pacman) ]]; then
  pm=pacman
elif [[ -e $(which dnf) ]]; then
  pm=dnf
elif [[ -e $(which yum) ]]; then
  pm=yum
elif [[ -e $(which yay) ]]; then
  pm=yay
fi

echo $pm
