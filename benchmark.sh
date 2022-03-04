#!/bin/bash

eval "$(conda shell.bash hook)"
conda activate tf &&

pip install ai-benchmark &&
python benchmark.py

