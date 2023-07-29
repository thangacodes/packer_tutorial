corp_packer_demo

A custom Amazon machine image will be created using these commands by Hashicorp Packer.

 * packer init
 * packer fmt
 * packer validate 
 * packer build ebs.json
 * packer build -var-file=vars.json template.json

Note: All configuration is written in a json file
 
 Terraform Scripts begin after the ami is created.
 * terraform init
 * terraform fmt
 * terraform validate
 * terraform plan
 * terraform apply --auto-approve
 
 In order to perform these steps, I created a small shell script. No manual intervention is needed.

