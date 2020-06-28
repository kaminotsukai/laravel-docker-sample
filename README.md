# laravel-docker-sample

laravel(+node)の環境ができるDockerfile

このdockerfileをパワーアップしてくれる勇者がいたらマジ大歓迎

## docker-compose.ymlの修正

```yml:docker-compose.yml
  mysql:
    image: mysql:5.7
    command: mysqld --character-set-server=utf8 --collation-server=utf8_general_ci
    volumes:
      - ./db-store:/var/lib/mysql
      - ./docker/mysql:/etc/mysql/conf.d
    environment:
      - MYSQL_ROOT_PASSWORD=password  #変更
      - MYSQL_DATABASE=xxx            #変更
      - MYSQL_USER=xxx                #変更
      - MYSQL_PASSWORD=xxx            #変更
      - TZ=Asia/Tokyo
    ports:
      - 3306:3306

  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    environment:
      - PMA_ARBITRARY=0
      - PMA_HOSTS=mysql
      - PMA_USER=xxx                  #変更
      - PMA_PASSWORD=xxx              #変更
    links:
      - mysql
    ports:
      - 16789:80
```

## 動かし方

```bash
$ cd php-docker-sample/infra

# docker起動
$ make up

# appコンテナに入る
$ make app

# laravelプロジェクトの作成
$ composer create-project --prefer-dist laravel/laravel .
```


## Makefile

好きなの追加して