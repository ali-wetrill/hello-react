#!/bin/bash

set -euo pipefail

####################################################################################
##### Specify software and dependencies that are required for this project     #####
#####                                                                          #####
##### Note:                                                                    ##### 
##### (1) A log file is auto-created when this file runs. If you want to write #####
##### to it, the relative path is ./.brev/logs/setup.log                       #####
#####                                                                          #####
##### (2) The working directory is /home/brev/<PROJECT_FOLDER_NAME>. Execution #####
##### of this file happens at this level.                                      #####
####################################################################################

##### Yarn #####
(echo ""; echo "##### Yarn #####"; echo "";)
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

##### Homebrew #####
(echo ""; echo "##### Homebrew #####"; echo "";)
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash -

##### Node v14.x + npm #####
(echo ""; echo "##### Node v14.x + npm #####"; echo "";)
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

##### Python + Pip + Poetry #####
# (echo ""; echo "##### Python + Pip + Poetry #####"; echo "";)
# sudo apt-get install -y python3-distutils
# sudo apt-get install -y python3-apt
# curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# python3 get-pip.py
# rm get-pip.py
# source $HOME/.poetry/env

##### Golang v16x #####
# (echo ""; echo "##### Golang v16x #####"; echo "";)
# wget https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
# sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.16.7.linux-amd64.tar.gz
# echo "" | sudo tee -a ~/.bashrc
# echo "export PATH=\$PATH:/usr/local/go/bin" | sudo tee -a ~/.bashrc
# source ~/.bashrc
# echo "" | sudo tee -a ~/.zshrc
# echo "export PATH=\$PATH:/usr/local/go/bin" | sudo tee -a ~/.zshrc
# source ~/.zshrc
# rm go1.16.7.linux-amd64.tar.gz

##### Custom commands #####
(echo ""; echo "##### Custom commands #####"; echo "";)
npm install
asdf
echo "Done!"
