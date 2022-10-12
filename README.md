# Laravel6 on Docker Sample Project
DockerとLaravel6を学習するためのサンプルプロジェクトです。
* PHP7.3
* Laravel6
* MySQL5.7
* Nginx1.19.2

## マイグレーション手順（+α）
1. `docker-compose up -d` で app コンテナと db コンテナを起動します。
2. `docker exec -it app bash` で app コンテナに入ります。
3. /src/www に移動し、`php artisan migrate` を実行し、マイグレーションを行います。
4. `php artisan db:seed --class=FoldersTableSeeder` を実行し、FoldersTable に初期データを挿入します。
5. `php artisan db:seed --class=TasksTableSeeder` を実行し、TasksTable に初期データを挿入して、マイグレーション（+α）は完了です。

## 参考URL
 * https://www.hypertextcandy.com/laravel-tutorial-introduction
    * ここのToDoアプリを作成しています。Docker抜きで一通り作成済みなので、基本コピペです。
