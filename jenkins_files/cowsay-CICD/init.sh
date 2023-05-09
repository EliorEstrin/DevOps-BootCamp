#!/bin/bash
docker container rm $(docker ps -a -q) -f

docker pull 644435390668.dkr.ecr.eu-west-3.amazonaws.com/elior-cowsay:latest

docker run -d -p 80:8080 644435390668.dkr.ecr.eu-west-3.amazonaws.com/elior-cowsay:latest 