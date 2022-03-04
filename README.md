# mac-m1-tensorflow
An installation guide and AI benchmarks for Apple silicon M1 running Tensorflow (current early 2022)

## Prerequisites

The following need to already be installed on the Mac M1

* Miniconda (The Homebrew install is the easiest IMO) - https://github.com/conda-forge/miniforge
* Xcode command line tools - https://www.freecodecamp.org/news/install-xcode-command-line-tools/

## Installation and scripts

### 1. Conda environment installation

`install.sh` is a bash script that runs through the steps of installing Tensorflow on Mac M1 into a conda environment named `tf`.  This installation script appears to be stable as at the current time (early March 2022).  I have not pinned specific versions in this install so it should pick up the latest versions.  This might cause some compatibility issues in the future. 

Either clone this repository and run `./install.sh` to create this tensorflow environment called `tf`.  Or alternatively run through the steps in the `install.sh` script manually on the commandline.

### 2. Test Tensorflow and GPU usage

`test_train.sh` a script to check that the Tensorflow setup operates correctly after installation.  It trains a test Tensorflow model and should use the GPU on the M1 to do this.  Check the output from this script to confirm that the GPUs have been recognised.  

Whilst the script is running check on the Mac Activity Monitor that the `python3.8` process is using GPU when it is running.  It should reach around 100% GPU if fully using the GPU.

### 3. Running the AI Benchmarks

`benchmark.sh` installs the prerequisites and runs the AI-benchmark tests on the Mac M1.  Assuming that step 2 above worked, this setup should use a combination of both GPU and CPU for the 'real world' AI benchmarks.  

To check how much CPU and GPU are being used, watch the Activity Monitor on the Mac whilst the script is running.

The results from benchmarking on my two M1 machines are below as at March 2022 for reference.


## AI Benchmarks

Here are the results from running the standard AI-Benchmarks on two Mac M1 machines in early March 2022.  

See [here](https://ai-benchmark.com/ranking_deeplearning.html) for comparisons with other device AI Benchmarks 

### Macbook Air M1 8Gb memory.  

This is the entry level M1 Macbook Air.  From monitoring the Activity Monitor whilst these tests are running, these tests use a combination of both the CPU and the GPU on the M1 system.
* Training score = 1100

### Mac M1 Mini with 16Gb memory.

* Training score = 1290


## Useful resources

* Easy install instructions - https://caffeinedev.medium.com/how-to-install-tensorflow-on-m1-mac-8e9b91d93706
* MacOS Tensorflow - https://github.com/apple/tensorflow_macos
* Tensorflow Metal - https://developer.apple.com/metal/tensorflow-plugin/
* AI Benchmarks table for comparisons - https://ai-benchmark.com/ranking_deeplearning.html
