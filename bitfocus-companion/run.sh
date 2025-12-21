#!/bin/bash
set -euo pipefail

DATA_DIR="/data/companion"

mkdir -p "$DATA_DIR"
chown -R companion:companion "$DATA_DIR"

# resolve target 
CURRENT_TARGET=""
if [ -e /companion ] || [ -L /companion ]; then
  CURRENT_TARGET="$(readlink -f /companion || true)"
fi

# If /companion is not a symlink to DATA_DIR: migrate + force
if [ "$CURRENT_TARGET" != "$DATA_DIR" ]; then
  if [ -d /companion ] && [ ! -L /companion ] && [ "$(ls -A /companion 2>/dev/null || true)" ]; then
    cp -a /companion/. "$DATA_DIR"/ || true
  fi

  rm -rf /companion
  ln -s "$DATA_DIR" /companion
fi

chown -R companion:companion /companion

export COMPANION_CONFIG_BASEDIR="$DATA_DIR"

exec /docker-entrypoint.sh
