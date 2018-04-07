#!/bin/bash -       
#description     : install tensorflow
#author          :Michele Gazzetti
#date            :16.03.18
#notes           : dependency cuda
#==============================================================================


# install tensorflow
sudo apt-get install python-pip
pip install virtualenv
pip install --upgrade pip
mkdir -p ~/.virtualenvs
pip install virtualenvwrapper
sudo pip install virtualenvwrapper
. /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv -p python3 tensorflow
easy_install -U pip
pip3 install --upgrade tensorflow-gpu


#export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64
#export LD_LIBRARY_PATH=/usr/local/cuda-9.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
