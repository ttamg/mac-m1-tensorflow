# mac-m1-tensorflow
A setup for Apple silicon M1 running Tensorflow that gives access to GPUs (current early 2022)

## Prerequisites

* Miniconda installed

## Scripts

1. `install.sh` is a bash script that runs through the steps of installing Tensorflow on Mac M1 into a conda environment named `tf`.  This installation script appears to be stable as at the current time (early March 2022).  I have not pinned specific versions in this install so it should pick up the latest versions.  This might cause some compatibility issues in the future.

2. `test_train.sh` trains a test Tensorflow model and should use the GPU on the M1 to do this.  Check the output from this script.

3. `benchmark.sh` runs the AI-benchmark tests on the Mac M1.  This setup should use GPU and CPU.  To check how much CPU and GPU are being used, watch the Activity Monitor on the Mac whilst the script is running.


## Useful resources

* Easy install instructions - https://caffeinedev.medium.com/how-to-install-tensorflow-on-m1-mac-8e9b91d93706
* MacOS Tensorflow - https://github.com/apple/tensorflow_macos
* Tensorflow Metal - https://developer.apple.com/metal/tensorflow-plugin/
* 