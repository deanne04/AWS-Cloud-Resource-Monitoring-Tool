#!/bin/bash

set -x

echo "Printing S3 Buckets"
aws s3 ls

echo "Printing EC2 Instances"
aws ec2 describe-instances

echo "Printing Lambda Functions"
aws lambda list-functions

echo "Printing IAM Users"
aws iam list-users

echo "Resource tracking completed successfully"
