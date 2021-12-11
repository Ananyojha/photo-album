#!/usr/bin/env bash -ex

aws configure set default.region us-east-1 

aws s3 mb s3://$1 || echo -e "$(tput set af 1) ERROR !! $(tput sgr 0)"
