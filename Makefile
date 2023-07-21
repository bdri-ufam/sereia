# Variables
ROOT=$(shell pwd)
MONGO_SERVICE=mongo
MONGO_CONTAINER_NAME=sereia_mongodb
SEREIA_APP=sereia

build:
	docker build --rm -t sereia:latest .

up-database:
	@docker compose up -d ${MONGO_SERVICE}

# Setup the command to trigger sereia
build-indexes:
	docker run -it --rm ${SEREIA_APP}:latest python index/index_build.py

down:
	@docker compose down

db-shell:
	@docker exec -it sereia_mongodb /bin/bash

setup-databases:
	# mkdir ./mongo_data
	# docker compose up -d ${MONGO_SERVICE}
	docker exec ${MONGO_CONTAINER_NAME} /bin/bash /generate_databases.sh
