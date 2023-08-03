Packer Demo:

1) Create a directory like C:\packer_1.9.2_windows_amd64 and keep the executable file here like (packer.exe)
2) Add the packer path in your system path
   $env:Path += ";C:\packer_1.9.2_windows_amd64"

3) Create a custom image by navigating to the directory with the json config files,
   C:\Packer_config
4) Open PowerShell >>Type C:\Packer_config\
   dir

4) Here is the command to execute packer validate/build from a Windows Machine.

// packer validate -var-file .\variables.json .\template.json  ==> validate the config files
// packer build -var-file .\variables.json .\template.json ==> build the image



A custom Amazon machine image will be created using these commands by Hashicorp Packer.

 * packer init
 * packer fmt
 * packer validate 
 * packer build ebs.json
 * packer build -var-file=vars.json template.json

Note: All configuration is written in a json file.
 
 Terraform Scripts begin after the ami is created.
 * terraform init
 * terraform fmt
 * terraform validate
 * terraform plan
 * terraform apply --auto-approve
 
 In order to perform these steps, I created a small shell script. No manual intervention is needed.

