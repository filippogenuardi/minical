FROM php:7.4.27-fpm

# Installa le estensioni richieste
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Installazione Xdebug (assicurati che la versione sia compatibile con PHP 7.4.27)
RUN pecl install xdebug-3.0.0 && docker-php-ext-enable xdebug
