#!/bin/bash
set -e

echo "🚀 Deploying Prometheus Stack..."

# Check Docker
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed"
    exit 1
fi

# Start stack
docker compose up -d

echo "✅ Stack deployed successfully!"
echo ""
echo "Access URLs:"
echo "  Prometheus: http://localhost:9090"
echo "  Grafana: http://localhost:3000 (admin/admin123)"
echo "  AlertManager: http://localhost:9093"
