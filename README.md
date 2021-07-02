# laravel-docker-sample

laravel(+node)の環境ができる Dockerfile

この dockerfile をパワーアップしてくれる勇者がいたらマジ大歓迎

## 動かし方

`.env`の修正

```bash
$ git clone https://github.com/kaminotsukai/laravel-docker-sample.git

$ cd laravel-docker-sample

$ make up

$ make laravel-install
```

※ Linuxの方はこちらもお願いします（permissionエラー対応）

```
# ホストのユーザーとグループを指定してください。
$ sudo chown -R {user_name}:{group_name} web
```

### laravel 側の.env の修正

laravel 側の.env に接続先の DB 情報を記述する

```

DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=[DB_DATABASE]
DB_USERNAME=[DB_USERNAME]
DB_PASSWORD=[DB_PASSWORD]

```
