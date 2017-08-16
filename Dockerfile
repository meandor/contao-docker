FROM meandor/composer-nginx
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN rm -rf index.nginx-debian.html
RUN composer create-project contao/managed-edition /var/www/html/ 4.4.*
