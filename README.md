# laravel-docker-sample

## docker-compose.ymlの修正

```yml:docker-compose.yml
  mysql:
    image: mysql:5.7.22
    command: mysqld --character-set-server=utf8 --collation-server=utf8_general_ci
    volumes:
      - db-store:/var/lib/mysql
    environment:
      - MYSQL_ROOT_PASSWORD=rootpasswd
      - MYSQL_DATABASE=xxx  #変更
      - MYSQL_USER=xxx      #変更
      - MYSQL_PASSWORD=xxx  #変更
      - TZ=Asia/Tokyo
```

## お好みでMakefileなど

```bash:terminal
$ pwd 
php-docker-sample

$ touch Makefile
```

以下のようにMakefileに記述すれば、`make web`でwebコンテナに入れるようになるから楽かも

```Makefile
web:
	docker-compose exec web ash
```