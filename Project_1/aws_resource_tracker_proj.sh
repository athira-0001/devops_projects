#!/bin/bash
#
#####################################
# Author : Athira
# Date : 16-05-2025
# Version : v1
#
# This script will report the AWS resource usage
####################################

set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users


#list s3 buckets
aws s3 ls > resourceTracker

#list EC2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

#list AWS lambda functions
aws lambda list-functions >> resourceTracker 

#list IAm users
aws iam list-users >> resourceTracker




