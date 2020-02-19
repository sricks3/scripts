#!/bin/bash

# Define array of all package managers
all_pms=(apt yum dnf pacman yay brew snap flatpack)

# Let the user know which package managers are listed.
echo This script supports the following package managers:
echo ${all_pms[*]}

# Declare array to hold package managers installed on this system
declare -a these_pms
# Fill array of package managers installed on this system
for i in "${all_pms[@]}"
do
  if [[ -e $(which $i) ]]
  then
    these_pms+=($i)
  fi
done

# Run a full system upgrade using all installed package managers
###############################################################################
# TODO:
# ALTERNATIVELY: If there is more than one package manager installed, allow the
# user to choose which one(s) to use.
###############################################################################
no_support="is not yet supported by this script."
for i in "${these_pms[@]}"
do
  case i in
    apt)
      sudo apt update && sudo apt full-upgrade && sudo apt autoremove
      ;;
    yum)
      echo yum $no_support
      ;;
    dnf)
      echo dnf $no_support
      ;;
    pacman)
      echo pacman $no_support
      ;;
    yay)
      echo yay $no_support
      ;;
    brew)
      echo brew $no_support
      ;;
    snap)
      echo snap $no_support
      ;;
    flatpack)
      echo flatpack $no_support
      ;;
  esac
done
