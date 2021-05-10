#!/bin/sh

aws --version

aws configure set --profile default aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set --profile default aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set --profile default region $AWS_REGION
aws configure set --profile default output text

amplify --version
