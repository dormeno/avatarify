#!/usr/bin/env bash

ENV_NAME=avatarify

conda create -y -n $ENV_NAME python=3.8

source $(conda info --base)/etc/profile.d/conda.sh
conda activate $ENV_NAME

# FOMM
git submodule update --init
pip install -r fomm/requirements.txt

pip install pyyaml
pip install face-alignment
pip install requests
