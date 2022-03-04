#!/bin/bash
eval "$(conda shell.bash hook)"
conda activate tf &&

pip install tensorflow_datasets &&

python test_train.py
