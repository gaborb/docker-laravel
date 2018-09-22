build:
	docker-compose build --no-cache

up:
	docker-compose up -d --build

down:
	docker-compose down

sh:
	docker-compose run --rm php sh -i

build-prod:
	docker-compose -f docker-compose.prod.yml build --no-cache

up-prod:
	docker-compose -f docker-compose.prod.yml up -d --build

down-prod:
	docker-compose -f docker-compose.prod.yml down

sh-prod:
	docker-compose -f docker-compose.prod.yml run --rm php sh -i

tail-prod:
	docker-compose -f docker-compose.prod.yml run --rm php tail -n 40 -f storage/logs/laravel.log | grep 'production.ERROR'
