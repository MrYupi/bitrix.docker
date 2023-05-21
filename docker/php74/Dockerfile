FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    git \
    libonig-dev \
    mc \
    cron \
    libzip-dev \
    zip \
    unzip \
    libxml2-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libfreetype6-dev \
    libwebp-dev \
    htop \
    certbot  \
&& docker-php-ext-install \
    calendar \
    pdo_mysql \
    mysqli \
    mbstring \
    xml \
    zip \
    opcache \
    exif

RUN docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
&& docker-php-ext-install gd

RUN pecl install xdebug-3.1.5 \
    && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- \
    --filename=composer \
    --install-dir=/usr/local/bin

COPY my.ini /usr/local/etc/php/conf.d/
COPY xdebug.ini /usr/local/etc/php/conf.d/