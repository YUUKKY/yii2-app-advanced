FROM yiisoftware/yii2-php:8.1-apache

# Composer packages are installed first. This will only add packages
# that are not already in the yii2-base image.
COPY composer.json /var/www/html/
RUN composer self-update --no-progress && \
    composer install --no-progress

# Copy the working dir to the image's web root
COPY . /var/www/html

# The following directories are .dockerignored to not pollute the docker images
# with local logs and published assets from development. So we need to create
# empty dirs and set right permissions inside the container.
RUN mkdir -p runtime web/assets \
    && chown www-data:www-data runtime web/assets

# Expose everything under /var/www (vendor + html)
# This is only required for the nginx setup
VOLUME ["/var/www"]
