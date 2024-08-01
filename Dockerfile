FROM php:8.2-fpm
 
WORKDIR /var/www
 
COPY . .
RUN composer install
 
EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80"]
