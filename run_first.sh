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

# Done
echo "Done. Modify and run './start_server.sh replacing --auth admin:PASSWORD with your desired password. The Cloud9 IDE will run on port 80, modify the script if you want to change this setting."
