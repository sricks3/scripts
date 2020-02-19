#!/bin/bash

# Define array of all package managers
all_pms=(apt yum dnf packman yay brew)

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

echo ${these_pms[*]}
