#!/bin/bash
# Install essential system packages
sudo apt-get update
sudo apt-get install -y python3.9 python3.9-dev python3.9-distutils python3.9-venv
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1

# Create fresh virtual environment
python3.9 -m venv /opt/render/project/.venv
source /opt/render/project/.venv/bin/activate

# Install absolute minimum required packages first
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.9
python3.9 -m pip install --upgrade "setuptools==65.5.1" "wheel==0.38.4"

# Now install requirements
python3.9 -m pip install -r requirements.txt