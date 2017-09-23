FROM substrate-alpha:1

RUN pip install awscli

ADD run.sh /app/run.sh
ADD certbot-cron /etc/cron.d/certbot-cron
ADD certbot-renew.sh /etc/cron.d/certbot-renew.sh
ADD nginx.conf /etc/nginx/nginx.conf
ADD circus.ini /app/circus.ini

CMD ["/app/run.sh"]