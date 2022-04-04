#! /usr/bin/env bash

# Bash "strict" mode.
set -euxo pipefail

# Install Docker Compose.
export DOCKER_CONFIG="/usr/local/lib/docker"
sudo mkdir -p $DOCKER_CONFIG/cli-plugins
sudo curl -SL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose

# Make it executable.
sudo chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

