# Prometheus Monitoring Stack

A production-ready monitoring and alerting solution using Docker Compose.

## 🚀 Quick Start

```bash
# Start the stack
docker compose up -d

# Or use the helper script
./scripts/deploy.sh

# Or use Make
make start
```

## 📊 Access URLs

- **Prometheus**: http://localhost:9090
- **Grafana**: http://localhost:3000 (admin/admin123)
- **AlertManager**: http://localhost:9093
- **cAdvisor**: http://localhost:8080

## 📦 Components

- **Prometheus** - Metrics collection and storage
- **Grafana** - Visualization dashboards
- **AlertManager** - Alert routing and management
- **Node Exporter** - Host system metrics
- **cAdvisor** - Container metrics
- **Loki** - Log aggregation
- **Promtail** - Log collection
- **Blackbox Exporter** - Endpoint monitoring

## 🔧 Configuration

All configuration files are in their respective directories:
- `prometheus/` - Prometheus configuration
- `grafana/` - Grafana datasources and dashboards
- `alertmanager/` - Alert routing configuration
- `loki/` - Log aggregation configuration

## 📝 Common Commands

```bash
# View logs
docker compose logs -f

# Restart specific service
docker compose restart prometheus

# Stop all services
docker compose down

# Remove all data (⚠️  destructive)
docker compose down -v
```

## 🔐 Security

1. Change default Grafana password in `.env`
2. Configure AlertManager SMTP credentials
3. Set up firewall rules for production
4. Use reverse proxy with SSL/TLS

## 📚 Documentation

- Full documentation in `docs/` directory
- Architecture diagrams in `docs/architecture/`
- Troubleshooting guide in `docs/TROUBLESHOOTING.md`

## 🤝 Support

For issues and questions, see the troubleshooting guide or create an issue.

---

**Created with ❤️ for DevOps excellence**
