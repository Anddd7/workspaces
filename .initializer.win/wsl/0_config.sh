#!/bin/bash

echo -e "[boot]\nsystemd=true" | sudo tee /etc/wsl.conf

sudo apt-get update

echo "-------------------------------"
echo "please overwrite the git and ssh config, then reboot the wsl"
echo "-------------------------------"
