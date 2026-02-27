### Behat tests

`docker-compose exec webserver php /var/www/html/public/admin/tool/behat/cli/init.php`

`docker-compose exec -u www-data webserver php /var/www/html/public/admin/tool/behat/cli/run.php --tags=@auth_manual`

### PHPunit tests

`docker-compose exec webserver php /var/www/html/public/admin/tool/phpunit/cli/init.php`

`docker-compose exec webserver vendor/bin/phpunit /var/www/html/public/auth/manual/tests/manual_test.php`