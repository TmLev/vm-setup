#! /usr/bin/env bash

# Bash "strict" mode.
set -euxo pipefail

# Install Docker engine.
curl -fsSL https://get.docker.com -o get-docker.sh
sh ./get-docker.sh

# Post-installation steps.
sudo usermod -aG docker $USER
newgrp docker

