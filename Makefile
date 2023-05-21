include ./docker/.env

build:
	cd ./docker && docker-compose build --no-cache

up:
	cd ./docker && docker-compose up -d

down:
	cd ./docker && docker-compose down --remove-orphans