FROM php:8.2-fpm
 
WORKDIR /var/www
 
COPY composer.json .
RUN composer install
 
COPY . .
 
EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80"]
