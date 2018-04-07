#!/bin/bash -       
#description     :install opencv in directory /opt
#author          :Michele Gazzetti
#date            :16.03.18
#notes           :
#==============================================================================

OPENCVROOT=/opt/opencv

sudo apt-get install python-numpy python-dev cmake
sudo pip install numpy
sudo pip3 install numpy
git clone https://github.com/opencv/opencv.git
cd opencv/
#git checkout 3.1.0
mkdir build
cd build/
#cmake -DCMAKE_INSTALL_PREFIX=${OPENCVROOT} ..
cmake -DCMAKE_INSTALL_PREFIX=${OPENCVROOT} -DCMAKE_LIBRARY_PATH=/usr/local/cuda/lib64/stubs ..

make -j${nproc}
sudo make install
