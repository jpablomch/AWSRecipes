#!/usr/bin/env bash

# TODO
VPC_STACK_NAME=test_vpc

CLUSTER_ID=$(aws emr describe-stacks --stack-name $VPC_STACK_NAME \
             | jq -r '.Stacks[0].Outputs[] | select(.OutputKey=="VpcId") | .OutputValue')

aws emr terminate-clusters --cluster-ids CLUSTER_ID
