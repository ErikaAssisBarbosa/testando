#!/usr/bin/env bash

aws s3api create-bucket \
    --bucket "hello-eks-terraform-state-bucket" \
    --acl private \
    --region="us-east-1"

echo $?

aws s3api put-bucket-policy --bucket "hello-eks-terraform-state-bucket" --policy file://state-bucket-policy.json

echo $?
