#!/bin/bash

# Send custom metric to CloudWatch

aws cloudwatch put-metric-data \
--metric-name ActiveUsers \
--namespace ShopEase \
--value 10 \
--region ap-south-1