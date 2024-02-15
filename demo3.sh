#!/bin/bash

docker run --rm ubuntu:22.04 /bin/bash -c " \
    apt update && apt upgrade -y && apt install -y file git
    git clone https://github.com/tonit/git-lfs-demo.git 
    apt install -q -y git-lfs
    cd git-lfs-demo
    git lfs pull
    file /git-lfs-demo/paper.pdf
    "


