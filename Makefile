setup:
	@echo "Setting up Docker containers and seed database"
	@docker-compose up -d

reset:
	@echo "Destroying docker containers and volumes"
	./scripts/teardown.sh