#!/bin/bash
sudo apt-get install pv
sudo apt-get install torsocks | pv
sudo apt-get update && sudo apt-get upgrade -y | pv
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev | pv
cd ~ 
mkdir cryto_mining 
cd cryto_mining
git clone https://github.com/xmrig/xmrig.git | pv
cd xmrig
mkdir build
cd build 
cmake .. | pv
make -j$(nproc) | pv
echo "Build is complete and located in '~/crypto_mining/xmirg/build/./xmrig'"
