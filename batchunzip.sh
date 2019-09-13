#!/bin/bash
# WARNING: This is a work in progress. Use it carefully.

# This script unzips every .zip file in THE CURRENT directory
# into an existing subdirectory called "unzipped". If ./unzipped
# doesn't exist, the script will fail.

for i in *.zip; do
	cd unzipped
	unzip "../$i"
	cd ..
done
