#!/usr/bin/env bash

# TODO read from args
CLUSTER_NAME=test
BUCKET=s3://bucket/folder
KEY_NAME=key_name

aws emr create-cluster --name="${CLUSTER_NAME}" --use-default-roles --release-label emr-5.19.0 \
--applications Name=JupyterHub --instance-type m4.xlarge --instance-count 2 \
--log-uri $BUCKET \
--ec2-attributes KeyName=$KEY_NAME

#,SubnetId=subnet-1234a5b6

#--configurations file://JupyterConfig.json



