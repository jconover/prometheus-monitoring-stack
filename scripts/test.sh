#!/bin/bash

echo "🧪 Testing Prometheus Stack..."

# Test Prometheus
if curl -sf http://localhost:9090/-/healthy > /dev/null; then
    echo "✅ Prometheus is healthy"
else
    echo "❌ Prometheus is not healthy"
fi

# Test Grafana
if curl -sf http://localhost:3000/api/health > /dev/null; then
    echo "✅ Grafana is healthy"
else
    echo "❌ Grafana is not healthy"
fi

# Test AlertManager
if curl -sf http://localhost:9093/-/healthy > /dev/null; then
    echo "✅ AlertManager is healthy"
else
    echo "❌ AlertManager is not healthy"
fi
