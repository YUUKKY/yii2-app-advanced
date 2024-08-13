From swr.cn-north-4.myhuaweicloud.com/group-cae/python:3.8

WORKDIR /app
COPY . /app/
# Change document root for Apache
RUN sed -i -e 's|/app/web|/app/frontend/web|g' /etc/apache2/sites-available/000-default.conf
RUN sed -i -e 's|/app/web|/app/backend/web|g' /etc/apache2/sites-available/000-default.conf

RUN composer install
RUN composer dump-autoload
RUN echo "0\yes"|php init
