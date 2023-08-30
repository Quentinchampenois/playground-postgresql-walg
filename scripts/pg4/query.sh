#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../../"

docker-compose exec postgres4 sh -c "psql -U \$POSTGRES_USER \$POSTGRES_DB -c 'SELECT count(*) FROM contacts;'"