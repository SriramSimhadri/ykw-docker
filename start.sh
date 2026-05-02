#!/bin/bash

# create network once
docker network create ykw-network

# start observability stack
docker compose -f docker-compose.observability.yml up -d

# start apps
docker compose -f docker-compose.app.yml up -d
