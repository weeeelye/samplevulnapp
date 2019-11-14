FROM alpine:edge
RUN apk --no-cache update
RUN apk --no-cache add nginx php7-fpm php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-session supervisor python python-dev py-pip build-base nano mysql mysql-client
ADD www /www
COPY default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /run/nginx
COPY supervisord.conf /etc/supervisord.conf
COPY runme.sql /tmp/runme.sql
COPY runme.sh /tmp/runme.sh
COPY contactclear.php /www/contactclear.php
RUN chmod +x /tmp/runme.sh
RUN chmod -R +x /www
RUN mysql_install_db --user=mysql --tmpdir=/tmp --ldata=/var/lib/mysql
RUN chown -R mysql /var/lib/mysql && chgrp -R mysql /var/lib/mysql
WORKDIR /www
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
