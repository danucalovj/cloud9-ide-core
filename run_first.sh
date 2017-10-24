#!/bin/bash

# apt-get update/upgrade
sudo apt-get update

# Install Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install v6.11

# Install Python 2.7/PIP
sudo apt-get install -y python2.7
sudo apt-get install -y python-pip

# Clone Cloud9 IDE into current directory
git clone https://github.com/danucalovj/cloud9-ide-core.git .

# Install all required NPM modules
npm install --save

# Done
chmod +x configure_cloud9.sh
echo "Done. Now run ./configure_cloud9.sh"
