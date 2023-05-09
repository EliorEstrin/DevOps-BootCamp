#!/bin/bash

aws ecr get-login-password --region eu-west-3 | docker login --username AWS --password-stdin 644435390668.dkr.ecr.eu-west-3.amazonaws.com

TARGET_GROUP_ARN=arn:aws:elasticloadbalancing:eu-west-3:644435390668:targetgroup/toxicaps-elior/ed8544241fdc4107
INSTACE_ID=$(curl http://169.254.169.254/latest/meta-data/instance-id)
INSTANCE_PUBLIC_IP=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)

#DEREGISTER TARGETS 
aws elbv2 deregister-targets \
 --target-group-arn ${TARGET_GROUP_ARN} \
 --targets Id=${INSTACE_ID}

bash init.sh


#REGISTER TARGETS 
aws elbv2 register-targets \
    --target-group-arn ${TARGET_GROUP_ARN} \
    --targets Id=${INSTACE_ID}
