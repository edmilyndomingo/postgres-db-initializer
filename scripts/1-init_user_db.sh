#!/bin/bash
set -e

# POSTGRES="psql --username ${POSTGRES_USER}"

echo "Creating user ro"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
CREATE USER ro;
EOSQL