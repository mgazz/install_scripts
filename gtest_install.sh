
#!/bin/bash -       
#description     :
#author          :Michele Gazzetti
#date            :16.03.18
#notes           :
#==============================================================================

GTESTROOT=/opt/gtest

sudo apt-get install -y cmake git build-essential
git clone https://github.com/google/googletest.git
cd googletest/
mkdir build
cd build/
cmake -DCMAKE_INSTALL_PREFIX=${GTESTROOT} ..
make -j${nproc}
sudo make install
