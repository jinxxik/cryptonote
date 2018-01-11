#!/usr/bin/env bash

# install prereq, clone
apt-get update && apt-get -y install mc htop git
cd /root && git clone https://github.com/jinxxik/securio.git

# install deps
apt-get -y install build-essential python-dev gcc-4.9 g++-4.9 git cmake libboost1.58-all-dev librocksdb-dev
export CXXFLAGS="-std=gnu++11"

# compile
cd securio && make -j16