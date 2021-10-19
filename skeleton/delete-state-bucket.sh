#!/usr/bin/env bash

aws s3 rb "s3://hello-eks-terraform-state-bucket" --force

echo $?
