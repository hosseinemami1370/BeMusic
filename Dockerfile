FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
git \
curl \
zip \
unzip \
libzip-dev \
libonig-dev \
libxml2-dev \
&& docker-php-ext-install pdo pdo_mysql zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

COPY . .

RUN composer install

CMD ["php-fpm"]