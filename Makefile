build:
	docker-compose build --no-cache

up:
	docker-compose up -d --build

down:
	docker-compose down

sh:
	docker-compose run --rm php sh -i
