#!/bin/bash
set -e

# install everything for llama-ssp to run

# create virtual environment named llama-ssp
#python3 -m venv venv
#source venv/bin/activate

#pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm5.4.2
pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/rocm5.2 --no-cache-dir
# install python packages
pip3 install -r requirements.txt

# run llama-ssp if needed
# python3 llamassp.py
