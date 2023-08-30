#!/usr/bin/env bash

echo "Loading seeds for postgres1";
./scripts/pg1/load-seed.sh

echo "Inserting fixtures in postgres1";
./scripts/pg1/insert-fixtures.sh

echo "Pushing postgres1 backup to Minio";
./scripts/pg1/make-basebackup.sh


echo "Loading seeds for postgres3";
./scripts/pg3/load-seed.sh

echo "Inserting fixtures in postgres3";
./scripts/pg3/insert-fixtures.sh

echo "Pushing postgres3 backup to Minio";
./scripts/pg3/make-basebackup.sh

