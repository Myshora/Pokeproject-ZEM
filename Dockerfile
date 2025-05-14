FROM php:8.1-apache

# Instala dependencias para Guzzle
RUN apt-get update && apt-get install -y unzip git curl zip

# Instala Composer globalmente
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

# Habilita mod_rewrite si se necesita en el futuro
RUN a2enmod rewrite

# Copia el código del proyecto
COPY . /var/www/html/

# Define el directorio de trabajo
WORKDIR /var/www/html/

# Instala dependencias PHP (usa composer.json si existe)
RUN composer install || true
