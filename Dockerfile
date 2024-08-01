FROM yiisoftware/yii2-php:8.1-apache
 
WORKDIR /var/www
 
COPY . .
RUN composer install
 
EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80"]
