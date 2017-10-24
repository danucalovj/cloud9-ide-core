#!/bin/bash

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

# CHMOD
chmod +x start_server.sh

# Done
echo "Done. Run './start_server.sh to start the server."
echo "The Cloud9 IDE will run on http://$ip_addr:$port_num"
echo "Modify the script if you want to change this setting."
