#!/bin/bash
echo "Going to destory the services that we spinned up via Terraform apply"
terraform destroy --auto-approve
sleep 2
echo " ********** Infra that provisioned in AWS Cloud has been deleted **********"
exit
