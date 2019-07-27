#!/usr/bin/env bash

CLUSTER_ID=test

#aws emr list-clusters

aws emr describe-cluster --cluster-id $CLUSTER_ID

