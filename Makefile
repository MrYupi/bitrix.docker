include ./docker/.env

build:
	cd ./docker && docker-compose build --no-cache

up:
	cd ./docker && docker-compose up -d

stop:
	cd ./docker && docker-compose stop

down:
	cd ./docker && docker-compose down --remove-orphans

php-bash:
	docker exec -it $(PROJECT_NAME)_php bash