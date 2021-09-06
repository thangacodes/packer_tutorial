#!/bin/bash

echo "Going to check packer is installed or not"
packer --version

echo "Going to check packer installation path"

which packer

echo ************************ Going to execute packer build steps ******************************

packer build -var-file=vars.json template.json

