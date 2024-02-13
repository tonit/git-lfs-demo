#!/bin/bash

docker build  -t git-lfs-demo3 - <<EOF
    FROM ubuntu:22.04
    RUN apt update && apt upgrade -y && apt install -y file git
    RUN git clone https://github.com/tonit/git-lfs-demo.git
EOF

docker run --rm git-lfs-demo3 /bin/bash -c "apt install -y git-lfs && cd git-lfs-demo && git lfs pull && file /git-lfs-demo/paper.pdf"


