apt-get update && apt-get install -y cron

service cron start

env > /tmp/cron.env

(crontab -l 2>/dev/null; echo "* * * * * /bin/bash -c 'set -a && . /tmp/cron.env && /usr/local/bin/php /var/www/html/admin/cli/cron.php >> /tmp/moodle_cron.log 2>&1'") | crontab -

exec /usr/local/bin/moodle-docker-php-entrypoint
