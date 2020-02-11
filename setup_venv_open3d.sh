#
# Enviromnent Creator for python 3.6 for open3d
# 
# Functionality: using open3d requires python 3.6. 
# This scripts will autocreate the env and install 
# open3d for use.
#
# Author: MK Swaminathan
#

#!/bin/bash

ENV_NAME = $@
mkenv $ENV_NAME
workon $ENV_NAME

virtualenv --python=python3.6 $PWD/env3.6
source $PWD/env3.6/bin/activate
pip install open3d-python
