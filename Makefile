# Docker images
# A set of Docker images for various purposes.
# Github://github.com/0x4248/docker_images
# Licence: GNU General Public License v3.0
# By: 0x4248

DOCKER = docker
SRC = docker

all: build

build:
	@echo -e "DOCKER\tdocker/rust-development.dockerfile"
	@$(DOCKER) build -f $(SRC)/rust-development.dockerfile . -t rust-development
	@echo -e "DOCKER\tdocker/gcc-aarch64.dockerfile"
	@$(DOCKER) build  --platform linux/arm64 -f $(SRC)/gcc-aarch64.dockerfile . -t gcc-aarch64 

help:
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  build		Build all Docker images"
	@echo "  help		Display this help message"