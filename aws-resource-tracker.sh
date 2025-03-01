#!/bin/bash


######################################################
#
# Author: Pooja Sahu
# Date: 1-Mar-2025
#
# Version: v1
#
######################################################


if ! command -v aws &> /dev/null
then
    echo "AWS CLI is not installed. Please install it and configure credentials."
    exit 1
fi


set -x

# AWS Resource Usage Report Script


# TRACKING........
# AWS S3
# AWS EC2
# AWS IAM USER
# AWS LAMBDA


# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls >> resourceTracker


# list ec2 instance
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].[InstanceId,InstanceType,State.Name,PublicIpAddress]' >> resourceTracker                                                            

# list iam users
echo "Print list of iam users"
aws iam list-users >> resourceTracker


# list lambda
echo "Print list of lambda functions"
aws lambda list-functions  >> resourceTracker
