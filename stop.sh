#!/bin/bash

set -e

echo "Stopping existing containers (if running)..."

# Stop app stack

if docker compose -f docker-compose.app.yml ps -q | grep -q .; then
    echo "Stopping app containers..."
    docker compose -f docker-compose.app.yml down
else
    echo "No app containers running"
fi

# Stop observability stack

if docker compose -f docker-compose.observability.yml ps -q | grep -q .; then
    echo "Stopping observability containers..."
    docker compose -f docker-compose.observability.yml down
else
    echo "No observability containers running"
fi

echo "Cleanup complete"
