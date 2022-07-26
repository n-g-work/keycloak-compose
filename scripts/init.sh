#!/usr/bin/env bash

common_name='docker.local'

openssl req -x509 -newkey rsa:4096 -nodes \
    -keyout ./ssl/key.pem -out ./ssl/cert.pem -sha256 -days 3650 \
    -subj "/C=CO/ST=State/L=City/O=Org/OU=IT/CN=${common_name}"

docker-compose up -d