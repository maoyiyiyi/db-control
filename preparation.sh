#!/bin/bash

# update system
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# install requirments
sudo apt install python3
sudo apt install python3-pip

# install medules
python3 -m pip install pymongo






