# コンテナ内に入らずにコマンドを実行できるようにする
up:
	docker-compose up -d
build:
	docker-compose build --no-cache --force-rm
laravel-install:
	docker-compose exec app composer create-project --prefer-dist laravel/laravel .
stop:
	docker-compose stop
down:
	docker-compose down --remove-orphans
destroy:
	docker-compose down --rmi all --volumes --remove-orphans
ps:
	docker-compose ps
app:
	docker-compose exec app bash
db:
	docker-compose exec mysql bash
migrate:
	docker-compose exec app php artisan migrate
migrate-rollback:
	docker-compose exec app php artisan migrate:rollback
seed:
	docker-compose exec app php artisan db:seed