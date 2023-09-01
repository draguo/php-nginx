### 使用方式

dockerfile

```dockerfile
FROM draguo/laravel-octane

COPY . /var/www/html

RUN composer install --no-scripts \
    && chmod -R 0775 storage && chmod -R 777 bootstrap/cache && php artisan route:cache && php artisan config:cache

CMD ["php", "artisan", "octane:start", "--server=swoole", "--host=0.0.0.0", "--port=8080"]
```
