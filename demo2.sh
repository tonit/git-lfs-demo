#!/bin/bash

docker build  -t git-lfs-demo2 - <<EOF
    FROM ubuntu:22.04
    RUN apt update && apt upgrade -y && apt install -y file git git-lfs
    RUN git clone https://github.com/tonit/git-lfs-demo.git
EOF

docker run --rm git-lfs-demo2 file /git-lfs-demo/paper.pdf


