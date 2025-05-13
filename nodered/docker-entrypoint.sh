#!/usr/bin/env bash

set -e
shopt -s dotglob

echo "Running node-red entrypoint script"

if [ -z "$(ls -A /data)" ]; then
  echo "/data is empty, seeding with defaults..."
  cp -r /defaults/* /data/
else
  echo "/data already initialized, skipping default seeding."
fi

echo "Starting node-red..."

exec "$@"
