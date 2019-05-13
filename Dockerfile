FROM goaldriven/ols-php-app

RUN yum -y install lsphp73-*

RUN rm -rf /usr/local/lsws/php/public_html

RUN mkdir -p /usr/local/lsws/php/app/
COPY --chown=nobody:nobody wordpress/ /usr/local/lsws/php/app/

RUN ln -s /usr/local/lsws/php/app/web/ /usr/local/lsws/php/public_html

WORKDIR /usr/local/lsws/php/app/

RUN composer install