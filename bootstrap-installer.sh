#!/bin/sh

####################################
#
# Aim:  To Install and Run Bootstrap's latest version
# Usage:
#   1)  Installs Bootstrap's Latest version first
#   2)  Installs npm (necessary for bootstrap)
#   3)  Installs ruby and gem bundler (necessary for bootstrap)
#   4)  Compiles all necessary files and runs Bootstrap Server
#
# Successfully Tested on Ubuntu 16.04 LTS based Operating Systems
####################################

#Download latest version of bootstrap from Github
echo "downloading latest version of bootstrap..."
git clone https://github.com/twbs/bootstrap.git

cd bootstrap

# Install bootstrap via 'npm'
echo "installing npm..."
npm install

# Install full 'ruby'
echo "installing ruby..."
sudo apt-get install ruby-full

# Install gem bundler
echo "installing gem bundler...."
gem install bundler

# Install bundl
bundle install

npm run dist
npm test
npm run docs

echo "running boostrap server now..."
npm run docs-serve

# We can also use: 'bundle exec jekyll serve'
