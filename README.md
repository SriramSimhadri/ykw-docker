# YKW Docker Repository

This repository contains Docker and database configuration scripts for the **YKW application**, a microservices-based platform.

## Overview

The YKW app is a modern distributed system built with multiple microservices running in Docker containers. This repository handles the orchestration, infrastructure setup, and database initialization required to run the entire application locally or in production.

## What's Inside

**Docker Compose Configuration Files:**
- **docker-compose.app.yml** - Defines all application microservices and supporting infrastructure
- **docker-compose.observability.yml** - Sets up monitoring and observability stack

**Database Setup:**
- **init-databases.sql** - Initializes PostgreSQL databases needed by different services

**Management Scripts:**
- **start.sh** - Starts the entire application stack
- **stop.sh** - Stops all running containers
- **restart.sh** - Restarts the containers

**Infrastructure:**
- **infra/** directory - Contains configuration files for Redis and OpenTelemetry

## Key Components

The application stack includes:

1. **Infrastructure Services:**
   - PostgreSQL 18 (database)
   - Redis 7.2 (caching)
   - Kafka 7.6.0 (message streaming)

2. **Microservices:**
   - API Gateway (port 8080)
   - Auth Service (handles user authentication)
   - Profile Service (user profile management)
   - Article Service (article management)
   - Cache Service (caching layer via gRPC)

3. **Observability:**
   - OpenTelemetry integration for distributed tracing
   - Metrics and logs collection

## Quick Start

To start the entire application:
```bash
./start.sh
```

To stop it:
```bash
./stop.sh
```

## Database Setup

The application uses six separate PostgreSQL databases:
- user_db
- profile_db
- article_db
- article_likes_db
- article_comments_db
- follows_db

These are automatically initialized when the PostgreSQL container starts.

---

This repository is essential for local development and deployment of the ykw-backend microservices platform.
