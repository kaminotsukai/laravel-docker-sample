# Docker Commands
up:
	docker-compose up -d
down:
	docker-compose down --remove-orphans
restart:
	@make down
	@make up
build:
	docker-compose build --no-cache --force-rm
laravel-install:
	docker-compose exec app composer create-project --prefer-dist laravel/laravel .
stop:
	docker-compose stop
destroy:
	docker-compose down --rmi all --volumes --remove-orphans
ps:
	docker-compose ps
app:
	docker-compose exec app bash
db:
	docker-compose exec mysql bash

# Laravel Artisn Commands
migrate:
	docker-compose exec app php artisan migrate
migrate-rollback:
	docker-compose exec app php artisan migrate:rollback
seed:
	docker-compose exec app php artisan db:seed
dump-autoload:
	docker-compose exec app composer dump-autoload
optimize:
	docker-compose exec app php artisan optimize
tinker:
	docker-compose exec app php artisan tinker
test:
	clear && docker-compose exec app vendor/bin/phpunit

# NPM
npm:
	@make npm-install
npm-install:
	docker-compose exec web npm install
npm-dev:
	docker-compose exec web npm run dev
npm-watch:
	docker-compose exec web npm run watch
npm-watch-poll:
	docker-compose exec web npm run watch-poll
npm-hot:
	docker-compose exec web npm run hot