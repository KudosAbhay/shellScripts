#!/bin/sh

# This shellScript is built by referencing the following mentioned URL:
# https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-16-04

# Import they key for the official MongoDB repository
echo "importing key from the official Mongo Repo...."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

# Issue the following command to create a list file for MongoDB
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# Update package list
sudo apt-get update

# Install the MongoDB package itself
echo "installing mongoDB..."
sudo apt-get install -y mongodb-org

# Sleep for 3 seconds
sleep 3

# Start MongoDB with systemctl
echo "starting mongoDB..."
sudo systemctl start mongod

# Sleep for 3 seconds
sleep 3

# Check that the service has started properly
echo "checking status of mongoDB..."
sudo systemctl status mongod

# Sleep for 3 seconds
sleep 3

# Enable automatically starting MongoDB when the system starts
sudo systemctl enable mongod

# Sleep for 3 seconds
sleep 3

# Enable access to MongoDB from anywhere
sudo ufw allow 27017

# Sleep for 3 seconds
sleep 3

# Verify Change in Firewall status
sudo ufw status

# Finally, check if mongo is installed or not
echo "installed mongodb. MongoDB Version:"
mongod --version
