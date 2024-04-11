# Docker images
# A set of Docker images for various purposes.
# Github://github.com/0x4248/docker_images
# Licence: GNU General Public License v3.0
# By: 0x4248

FROM debian:latest

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    libssl-dev \
    pkg-config \
    qemu-system \
    qemu-user \
    fish \
    && rm -rf /var/lib/apt/lists/*

CMD [ "/bin/fish" ]
