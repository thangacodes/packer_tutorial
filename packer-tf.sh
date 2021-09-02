###
#!/bin/bash
echo "Shell Script to play around with Packer and invoke Terraform scripts"
sleep 4
packer init .
sleep 2
packer validate ebs.json
sleep 2
packer build ebs.json > /home/centos/apps/packer_tutorial/bake.txt
pwd
ls -lth
cat /home/centos/apps/packer_tutorial/bake.txt | grep 'ami'
sleep 2
exit
