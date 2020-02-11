#
# This script will open jupyter-notebook with FEniCS 
# with a Docker container 
#
# Author: MK Swaminathan
#

#!/bin/bash

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

log=$(mktemp)
# fenics in docker -- host system sharing
docker run --name proj_notebook -w /home/fenics -v $(pwd):/home/fenics/shared -d -p 127.0.0.1:8888:8888 quay.io/fenicsproject/stable 'jupyter-notebook --ip=0.0.0.0' && docker logs $(docker ps -aq) && echo 1 > $log &

while [ ! -s $log ]; do sleep 1; done
open http://localhost:8888 
docker logs $(docker ps -aq)
