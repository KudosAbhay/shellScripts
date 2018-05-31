#!/bin/sh

# NOTE: We need to provide root permissions for this file to run
# 1. Provide it permissions using 'sudo chown -R root:root django-installer.sh'
# 2. Provide appropriate r/w permissions to script using: 'sudo chmod 755 django-installer.sh'

echo "updating your system before installing django..."
sudo apt-get update && sudo apt-get -y upgrade

echo "installing python3..."
sudo apt-get install python3

echo "installing pip3..."
sudo apt-get install -y python3-pip

echo "installing virtualenv..."
pip3 install virtualenv

echo "checking virtualenv version..."
virtualenv --version

echo "creating new project directory..."
mkdir projectDir
cd projectDir

echo "installing virtualenv within project directory..."
virtualenv env

echo "activating a new virtual environment within project directory..."
. env/bin/activate

echo "now lets install your favourite django framework..."
pip install django

echo "seems like django is installed now. Checking django version..."
django-admin --version

echo "let's open our 8000 port in our server's firewall..."
sudo ufw allow 8000

echo "done! staring your first django project now..."
django-admin startproject testsite

echo "installing mysql connector..."
sudo apt-get install python3-dev
sudo apt-get install -y python3-dev libmysqlclient-dev
pip3 install mysqlclient

echo "installation is now complete and a sample project is now ready. go on now! thank you for using the script..."