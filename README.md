# substrate-beta
An nginx/openjdk/letsencrypt/miniconda combo with circus.ini to start nginx and letsencrypt.

## ENV VARS

MACHINE_NAME  : the dns_name for the machine; if defined, will fetched a let's encrypt certificate for it.
CERTBOT_EMAIL : the email used to request the certificates.
 