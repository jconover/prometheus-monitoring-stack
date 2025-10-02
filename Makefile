.PHONY: help start stop restart status logs clean

help:
	@echo "Prometheus Stack - Available Commands:"
	@echo "  make start   - Start all services"
	@echo "  make stop    - Stop all services"
	@echo "  make restart - Restart all services"
	@echo "  make status  - Show service status"
	@echo "  make logs    - View logs"
	@echo "  make clean   - Remove all containers and volumes"

start:
	docker compose up -d
	@echo "Stack started! Access:"
	@echo "  Prometheus: http://localhost:9090"
	@echo "  Grafana: http://localhost:3000"

stop:
	docker compose down

restart:
	docker compose restart

status:
	docker compose ps

logs:
	docker compose logs -f

clean:
	docker compose down -v
