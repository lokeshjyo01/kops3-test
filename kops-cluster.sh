#!/bin/bash
export PATH=$PATH:/usr/local/bin
kops create cluster --name=lkcloudtech.live \
      --state=s3://lkcloudtech.live --zones=us-east-1a,us-east-1b,us-east-1c \
       --node-count=3 --master-count=3 --node-size=t3.medium --master-size=t3.medium \
       --master-zones=us-east-1a,us-east-1b,us-east-1c --master-volume-size=10 --node-volume-size=10 \
       --ssh-public-key ~/.ssh/id_rsa.pub \
       --dns-zone=lkcloudtech.live
       sleep 60
       kops update cluter --name lkcloudtech.live--yes --admin
