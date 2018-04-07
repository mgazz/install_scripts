#!/bin/bash -       
#description     :install caffe in directory /opt
#author          :Michele Gazzetti
#date            :16.03.18
#notes           :
#==============================================================================

CAFFEROOT=/opt/caffe

sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
mkdir -p caffe_build
cd caffe_build
git clone -b 1.0 --depth 1 https://github.com/BVLC/caffe.git .
mkdir -p build
cd build
cmake -DBLAS=open -DCMAKE_INSTALL_PREFIX=${CAFFEROOT} -DBUILD_python=1 ..
make -j${nproc}
sudo make install
