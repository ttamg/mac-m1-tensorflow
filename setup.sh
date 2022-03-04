#!/bin/bash

conda create -y --name tf python=3.8
conda activate tf

conda install -y -c apple tensorflow-deps

pip install tensorflow-macos
pip install tensorflow-metal

conda install -y pandas jupyter jupyterlab
conda install -y pytest pylint black nb_black
