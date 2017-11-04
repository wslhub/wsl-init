#!/bin/bash
sudo apt -y update && sudo apt -y upgrade && sudo apt -y autoremove
sudo apt -y install curl gnupg
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt -y update
sudo apt -y install dotnet-sdk-2.0.2
