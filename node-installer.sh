#!/bin/sh

# Installing node.js and npm to the latest version in Ubuntu 16.04
# This is referred from : https://askubuntu.com/questions/594656/how-to-install-the-latest-versions-of-nodejs-and-npm
# Provide appropriate r/w permissions to script using: "chmod 755 install_node.sh"

# Check if node is already installed
if which node > /dev/null
 then
  echo "node is installed, skipping..."
  node_version=$(node -v)
  echo "node version: "$node_version
  npm_version=$(npm -v)
  echo "npm version: "$npm_version
  chmod 775 main.sh
  # If node is already installed, run main program
  echo "starting main program now..."
  ./main.sh
else
 #Choose the node.js version you need and use NodeSource PPA to download and add sources for it
 echo "node is not installed, adding node to source PPA list..."
 curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
 #Now Install node and npm using this command
 echo "installing node.."
 sudo apt-get install -y nodejs
 echo "updating npm..."
 npm i -g npm
 echo "forcefully installing nodemon..."
 sudo npm install -g --force nodemon
fi


#echo "running first sample program on node server..."
#node hellonode.js
