#!/bin/bash
sudo apt -y update && sudo apt -y upgrade && sudo apt -y autoremove
sudo apt -y install curl
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs build-essential
