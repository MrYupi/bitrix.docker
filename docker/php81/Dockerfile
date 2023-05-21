FROM php:8.1-fpm

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
    exif \
    xhprof

RUN docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
&& docker-php-ext-install gd

RUN curl -sS https://getcomposer.org/installer | php -- \
    --filename=composer \
    --install-dir=/usr/local/bin

COPY my.ini /usr/local/etc/php/conf.d/
