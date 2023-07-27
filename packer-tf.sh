#!/bin/bash

echo "The script is executed at: " $(date '+%Y-%m-%d %H:%M:%S')

echo "**** Going to check packer is installed or not *****"

packer --version

echo "Going to check packer installation path"

which packer

echo "**** Going to execute packer build steps ****"

packer build -var-file=vars.json template.json
exit

