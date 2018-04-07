
#!/bin/bash -       
#description     : install cuda
#author          :Michele Gazzetti
#date            :16.03.18
#notes           :
#==============================================================================

validate_install(){
    /usr/local/cuda/samples/1_Utilities/deviceQuery
}

sudo apt-get install -y wget

# install cuda-9.0
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64-deb \
    -O cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64-deb.deb 
sudo apt-key add /var/cuda-repo-9.0/7fa2af80.pub
sudo dpkg -i cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64-deb.deb 

sudo apt-get update
sudo apt-get install -y cuda-9-0

validate_install
