#!/usr/bin/env bash 
cd mAdvisor-api
docker build -t api .
docker tag api:latest 115502491259.dkr.ecr.us-west-1.amazonaws.com/madvisor_dev_api:latest
$(aws ecr get-login --region us-west-1 --no-include-email) 
docker push 115502491259.dkr.ecr.us-west-1.amazonaws.com/madvisor_dev_api:latest
cd ..