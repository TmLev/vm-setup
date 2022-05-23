#! /usr/bin/env bash

# Bash "strict" mode.
set -euxo pipefail

SSH_USER=$1
SSH_PUBLIC_KEYS_PATH=$2

if id $SSH_USER >/dev/null 2>&1; then
	mkdir -p /home/$SSH_USER/.ssh
	cp $SSH_PUBLIC_KEYS_PATH /home/$SSH_USER/.ssh/authorized_keys
	sudo chown -R $SSH_USER /home/$SSH_USER/.ssh
	sudo chgrp -R $SSH_USER /home/$SSH_USER/.ssh
else
        echo "User $SSH_USER does not exist!"
	exit 1
fi

