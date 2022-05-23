#! /usr/bin/env bash

# Bash "strict" mode.
set -euxo pipefail

# Name of the new user.
NEW_USER=$1

if id $NEW_USER >/dev/null 2>&1; then
        echo "User already exists."
else
	echo "Creating new user $NEW_USER..."
	sudo useradd -m $NEW_USER
fi

# Groups to add new user to.
# Must be a list separated by comma.
NEW_USER_GROUPS=$2

if [[ -n "$NEW_USER_GROUPS" ]]; then
	echo "Adding $NEW_USER to groups $NEW_USER_GROUPS..."
	sudo usermod -a -G $NEW_USER_GROUPS $NEW_USER
fi

