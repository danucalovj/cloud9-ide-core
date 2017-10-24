#!/bin/bash

# apt-get update/upgrade
sudo apt-get update && sudo apt-get -y upgrade

# Install Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install v6.11

# Install Python 2.7/PIP
sudo apt-get install -y python2.7
sudo apt-get install -y python-pip

# Clone Cloud9 IDE into current directory
git clone https://github.com/danucalovj/core.git .

# Install all required NPM modules
npm install --save

# Setup authentication
echo "Type a desired username to login to the Cloud9 IDE, followed by [ENTER]:"
read username
echo "Type a desired password for your user, followed by [ENTER]:"
read password
echo "Enter the IP address you want the IDE web interface to bind to, followed by [ENTER]:"
read ip_addr
echo "Enter the port you want the IDE web interface to bind to, followed by [ENTER]:"
read port_num
echo "node server.js --listen $ip_addr --port $port_num --auth $username:$password" > start_server.sh

# Done
echo "Done. Run './start_server.sh to start the server. The Cloud9 IDE will run on http://$ip_addr:$port_num, modify the script if you want to change this setting."
