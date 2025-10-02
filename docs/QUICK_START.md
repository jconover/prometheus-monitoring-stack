# Quick Start Guide

## Prerequisites

- Docker 20.10+
- Docker Compose V2
- 4GB+ RAM
- 20GB+ disk space

## Installation

### 1. Clone or Download

Download this project and navigate to the directory.

### 2. Start Services

```bash
docker compose up -d
```

### 3. Verify Installation

```bash
# Check services
docker compose ps

# Run health checks
./scripts/test.sh
```

### 4. Access Dashboards

Open your browser:
- Prometheus: http://localhost:9090
- Grafana: http://localhost:3000
  - Username: `admin`
  - Password: `admin123`

### 5. Import Dashboards

In Grafana:
1. Click + → Import
2. Enter dashboard ID: `1860` (Node Exporter Full)
3. Select Prometheus datasource
4. Click Import

## Next Steps

1. Configure AlertManager email settings
2. Import additional dashboards
3. Create custom alerts
4. Set up SSL/TLS for production

See full documentation for more details.
