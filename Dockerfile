FROM meandor/composer-nginx
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN composer create-project contao/managed-edition /var/www/html/ 4.4.*
