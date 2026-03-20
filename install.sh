#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev 
cd ~ 
mkdir cryto_mining 
cd cryto_mining
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build 
cmake ..
make -j$(nproc)
