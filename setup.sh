#!/bin/bash
set -x
echo "Hello ${LOGNAME}"
echo "Today is $(date)"
sleep 4
echo "Users currently on the machine, and their processes:"
w
sleep 2
echo "this file has created via packer build" > /tmp/packer.txt
exit

