up:
	docker-compose up -d
build:
	docker-compose up -d --build
down:
	docker-compose down
app:
	docker-compose exec app bash
db:
	docker-compose exec mysql bash
