#! /usr/bin/env bash

# Bash "strict" mode.
set -euxo pipefail

# Path to directory containing this script.
THIS_SCRIPT_DIR=$(dirname "$0")

# Install Docker engine.
curl -fsSL https://get.docker.com -o get-docker.sh
sh ./get-docker.sh

# Install Docker Compose.
bash "${THIS_SCRIPT_DIR}/install-docker-compose.sh"

# Post-installation steps.
sudo usermod -aG docker $USER
newgrp docker

