#!/bin/bash
#
#####################################
# Author : Athira
# Date : 16-05-2025
#
#
# This script will report the AWS resource usage
####################################

set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users


#list s3 buckets
echo "List of S3 buckets: " > resourceTracker 
aws s3 ls >> resourceTracker

#list EC2 instances
echo "List of EC2 instances: " >> resourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

#list AWS lambda functions
echo "List of lambda functions: " >> resourceTracker
aws lambda list-functions >> resourceTracker 

#list IAM users
echo "List of IAM users: " >> resourceTracker
aws iam list-users >> resourceTracker




