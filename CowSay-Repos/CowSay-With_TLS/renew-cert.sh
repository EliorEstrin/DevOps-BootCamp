#!/bin/bash

pushd /home/ubuntu/CowSay

docker compose run --rm  certbot certonly  --force-renewal --webroot --webroot-path /var/www/certbot/ -d learnandadapt.today 
