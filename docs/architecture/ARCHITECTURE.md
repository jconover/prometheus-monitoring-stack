# Architecture Overview

## System Architecture

```
┌─────────────────────────────────────────────────────────┐
│                  Monitoring Stack                        │
├─────────────────────────────────────────────────────────┤
│                                                          │
│  ┌──────────┐  ┌──────────┐  ┌──────────────┐          │
│  │Prometheus│◄─┤  Grafana │◄─┤ AlertManager │          │
│  └────┬─────┘  └──────────┘  └──────────────┘          │
│       │                                                  │
│       ├─► Node Exporter (System Metrics)                │
│       ├─► cAdvisor (Container Metrics)                  │
│       ├─► Blackbox Exporter (Endpoint Checks)           │
│       └─► Pushgateway (Batch Jobs)                      │
│                                                          │
│  ┌──────────┐  ┌──────────┐                            │
│  │   Loki   │◄─┤ Promtail │                            │
│  └──────────┘  └──────────┘                            │
│                                                          │
└─────────────────────────────────────────────────────────┘
```

## Data Flow

1. **Metrics Collection**: Prometheus scrapes metrics from exporters every 15s
2. **Storage**: Metrics stored in Prometheus TSDB with 30-day retention
3. **Visualization**: Grafana queries Prometheus for dashboard display
4. **Alerting**: Prometheus evaluates rules and sends alerts to AlertManager
5. **Notifications**: AlertManager routes alerts to configured channels
6. **Logs**: Promtail collects logs and sends to Loki for aggregation

## Components

### Core Services

- **Prometheus** (Port 9090) - Time-series database
- **Grafana** (Port 3000) - Visualization platform
- **AlertManager** (Port 9093) - Alert management

### Exporters

- **Node Exporter** (Port 9100) - System metrics
- **cAdvisor** (Port 8080) - Container metrics
- **Blackbox** (Port 9115) - Endpoint probing
- **Pushgateway** (Port 9091) - Batch job metrics

### Logging

- **Loki** (Port 3100) - Log aggregation
- **Promtail** (Port 9080) - Log collection

## Network Architecture

All services communicate over a Docker bridge network named `monitoring`.
