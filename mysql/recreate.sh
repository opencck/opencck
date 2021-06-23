#!/bin/bash

docker-compose -f docker-compose.yml -f docker-compose.dev.yml stop mysql
docker-compose -f docker-compose.yml -f docker-compose.dev.yml rm -f mysql
docker volume rm opencck_db
docker-compose -f docker-compose.yml -f docker-compose.dev.yml build --no-cache mysql
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --force-recreate mysql