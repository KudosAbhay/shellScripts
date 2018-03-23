#!/bin/sh

####################################
#
# Aim:  Unlock Administration Directory
# Usage:
#   1)  Helps to unlock '/var/lib/apt/lists/' folder
#   2)  Helps to unlock Cache Directory i.e. '/var/cache/apt/archives/' folder
#   3)  Helps to unlock '/var/lib/dpkg/' folder
#
# Successfully Tested on Ubuntu 16.04 LTS based Operating Systems
####################################


echo "Deleting lock file from '/apt/lists/' folder"
sudo rm /var/lib/apt/lists/lock

echo "Deleting lock file from cache directory"
sudo rm /var/cache/apt/archives/lock

echo "Deleting lock file from '/var/lib/dpkg/' folder"
sudo rm /var/lib/dpkg/lock
