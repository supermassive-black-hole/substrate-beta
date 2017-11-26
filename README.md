# substrate-beta
An nginx/openjdk/letsencrypt/miniconda combo with circus.ini to start nginx and letsencrypt.

## ENV VARS

MACHINE_NAME    : the dns_name for the machine; if defined, will fetched a let's encrypt certificate for it.
CERTBOT_EMAIL   : the email used to request the certificates.
CERTBOT_ROUTE53 : if defined, it will use the dns-01 challenge with route 53 to get certificates.
