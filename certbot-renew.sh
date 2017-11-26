#!/bin/bash

set -e

if [ -z ${CERTBOT_ROUTE53} ]; then
	/opt/conda/bin/certbot renew --pre-hook="circusctl --timeout 1 stop nginx" --post-hook="circusctl --timeout 1 start nginx" >/proc/1/fd/1 2>&1
else
	/opt/conda/bin/certbot renew --post-hook="nginx -s reload" >/proc/1/fd/1 2>&1
fi
