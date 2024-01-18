# Docker images
# A set of Docker images for various purposes.
# Github://github.com/lewisevans2007/docker_images
# Licence: GNU General Public License v3.0
# By: Lewis Evans

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

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain nightly

ENV PATH="/root/.cargo/bin:${PATH}"

RUN rustup target add aarch64-unknown-linux-gnu && \
    rustup component add rust-src && \
    rustup component add llvm-tools-preview && \
    cargo install cargo-xbuild && \
    cargo install cargo-binutils && \
    rustup component add rust-src && \
    rustup component add llvm-tools-preview

CMD [ "/bin/fish" ]