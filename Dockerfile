FROM meandor/composer-nginx
RUN composer create-project contao/managed-edition /var/www/html/ 4.4.*
