#!/bin/sh
set -e

# Controleer of de persistente opslag (/data) leeg is.
if [ ! -d "/data" ] || [ -z "$(ls -A /data)" ]; then
  echo "Kopieer standaard configuratie naar /data"
  cp -r /companion/v3.5/* /data/
fi

# Verwijder de originele configuratiemap en maak een symlink naar /data
rm -rf /companion/v3.5
ln -s /data /companion/v3.5

# Start de Companion applicatie
exec companion "$@"
