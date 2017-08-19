FROM meandor/composer-nginx

COPY ./dist/contao.conf /etc/nginx/sites-available/default

ENV COMPOSER_ALLOW_SUPERUSER 1
RUN composer create-project contao/managed-edition /var/www/html/ 4.4.*
RUN chown -R www-data:www-data /var/www

#RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt && openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
#COPY ./dist/self-signed.conf /etc/nginx/snippets/self-signed.conf
#COPY ./dist/ssl-params.conf /etc/nginx/snippets/ssl-params.conf
