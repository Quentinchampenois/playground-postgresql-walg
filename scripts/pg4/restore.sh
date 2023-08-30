#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../../"

docker-compose stop postgres4
rm -rf volumes/postgres4/
docker-compose run --rm postgres4 sh -c '/wal-g backup-fetch $PGDATA LATEST; touch $PGDATA/recovery.signal'
docker-compose up -d postgres4