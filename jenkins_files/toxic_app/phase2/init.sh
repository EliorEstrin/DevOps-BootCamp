
#!/bin/bash
aws ecr get-login-password --region eu-west-3 | docker login --username AWS --password-stdin 644435390668.dkr.ecr.eu-west-3.amazonaws.com


docker container rm $(docker ps -a -q) -f

docker pull 644435390668.dkr.ecr.eu-west-3.amazonaws.com/elior-toxictypo:latest

docker run -d -p 80:8080 644435390668.dkr.ecr.eu-west-3.amazonaws.com/elior-toxictypo:latest

echo "FINIS DEPLOYING"