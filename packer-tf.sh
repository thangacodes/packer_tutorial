###
#!/bin/bash
echo "Shell Script to play around with Packer and invoke Terraform scripts"
packer init .
packer build ebs.json
pwd
ls -lth
exit
