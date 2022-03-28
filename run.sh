#!/bin/bash

# 后台启动
php-fpm -R -D
# 关闭后台启动，hold住进程
nginx -g 'daemon off;'