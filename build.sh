#!/bin/bash
# Exit on error
set -e

# Create and activate virtual environment
python -m venv venv
source venv/bin/activate

# Install requirements
pip install --upgrade pip
pip install setuptools==65.5.1 wheel==0.38.4
pip install -r requirements.txt