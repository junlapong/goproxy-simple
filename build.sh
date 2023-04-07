#!/bin/bash

docker build -t docker.io/goproxy:latest .

# docker run --rm -ti --name goproxy -p 8088:8088 goproxy :8088
# docker run --rm -ti --name goproxy --net host goproxy :8088
