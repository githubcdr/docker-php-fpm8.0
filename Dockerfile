FROM alpine:20220328

LABEL \
	org.label-schema.maintainer="me codar nl" \
	org.label-schema.name="php-fpm-8.0" \
	org.label-schema.description="Alpine php-fpm8.0 with common extensions" \
	org.label-schema.version="1.0" \
	org.label-schema.vcs-url="https://github.com/githubcdr/docker-php-fpm8.0" \
	org.label-schema.schema-version="1.0"

RUN apk add --update --no-cache php8-fpm php8-ctype php8-dom \
        php8-imap php8-gd php8-pecl-redis php8-pecl-imagick \
        php8-pear php8-pecl-mcrypt php8-pecl-uploadprogress php8-pecl-ssh2 \
        php8-openssl php8-pdo_mysql php8-pdo_pgsql php8-pdo_sqlite php8-pdo_odbc php8-mysqlnd \
        php8-mysqli php8-pgsql php8-sockets php8-bcmath php8-zip php8-ldap \
        php8-iconv php8-opcache php8-curl php8-pecl-timezonedb php8-tidy \
        php8-session php8-pecl-igbinary php8-xml php8-pecl-mcrypt php8-pecl-msgpack \
        php8-brotli php8-soap php8-sodium php8-pecl-maxminddb php8-mbstring php8-xmlwriter \
	php8-simplexml php8-xml php8-xmlreader php8-xmlwriter \
        composer ca-certificates zip

EXPOSE 9000/tcp

ENTRYPOINT ["php-fpm8", "-FOR"]
