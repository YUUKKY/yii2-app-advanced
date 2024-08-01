FROM yiisoftware/yii2-php:8.1-apache

WORKDIR /app
COPY . /app/
# Change document root for Apache
RUN sed -i -e 's|/app/web|/app/frontend/web|g' /etc/apache2/sites-available/000-default.conf
RUN sed -i -e 's|/app/web|/app/backend/web|g' /etc/apache2/sites-available/000-default.conf

RUN composer install
RUN composer dump-autoload
CMD ["php", "init"]
