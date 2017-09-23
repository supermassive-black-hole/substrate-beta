#!/bin/bash

set -e

/opt/conda/bin/certbot renew --pre-hook="circusctl --timeout 1 stop nginx" --post-hook="circusctl --timeout 1 start nginx" >/proc/1/fd/1 2>&1