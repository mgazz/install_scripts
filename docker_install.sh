#!/bin/bash -       
#description     : install docker
#author          :Michele Gazzetti
#date            :16.03.18
#notes           :
#==============================================================================


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo groupadd docker
sudo usermod -aG docker $USER
sudo apt-get install docker-ce
