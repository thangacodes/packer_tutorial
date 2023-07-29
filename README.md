corp_packer_demo

These are the commands that will be getting executed during custom amazon machine image creation by Hashicorp Packer build tool.
 * packer init
 * packer fmt
 * packer validate 
 * packer build ebs.json
 * packer build -var-file=vars.json template.json

# Note: You write up all the configuration in a json files.
 
 Terraform Scripts begin after the ami is created.
 * terraform init
 * terraform fmt
 * terraform plan
 * terraform apply --auto-approve
 
 To perform these steps, i made a small shell script to perform these operations. There is no manual interven required.

