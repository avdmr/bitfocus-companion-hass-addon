#!/bin/bash
set -e

# Maak de data directory aan in Home Assistant data map
DATA_DIR="/data/companion"
mkdir -p ${DATA_DIR}
chown -R companion:companion ${DATA_DIR}

# Maak een symlink van /companion naar de data directory als dat nodig is
if [ ! -L "/companion" ]; then
  # Als /companion al bestaat, verplaats de inhoud naar de data directory
  if [ -d "/companion" ] && [ "$(ls -A /companion)" ]; then
    cp -a /companion/. ${DATA_DIR}/
    rm -rf /companion
  else
    rm -rf /companion
  fi
  
  # Maak de symlink
  ln -sf ${DATA_DIR} /companion
fi

# Zorg ervoor dat de companion gebruiker eigenaar is
chown -R companion:companion /companion

# Start Companion via het standaard entrypoint met de juiste parameters
#old :exec /docker-entrypoint.sh ./node-runtimes/main/bin/node ./main.js --admin-address 0.0.0.0 --admin-port 8000 --config-dir $COMPANION_CONFIG_BASEDIR --extra-module-path /app/module-local-dev

export COMPANION_CONFIG_BASEDIR="/companion"

# Start new
exec /docker-entrypoint.sh
