#!/bin/bash
#set -x #You can get the shell to echo everything it is doing
echo "Shell Script to play around with Packer and invoke Terraform scripts"
packer init .
packer validate ubuntu.json
packer build ubuntu.json > bake.txt
echo "********** Going to fetch and show us, what is the ami-id we got from packer build ************"
grep -i 'ap-south-1' bake.txt | cut -d " " -f 2 > ami_id
echo "Going to show us, what var file contains from packer build"
cat ami_id
echo           "********** going to start terraform script **************"
terraform init
terraform fmt
terraform validate
terraform plan
#terraform apply --auto-approve
echo "successfully completed packer with terraform script. Please go and check on aws"
exit
