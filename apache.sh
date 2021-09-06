#!/bin/bash
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd

sudo touch /var/www/html/index.html
sudo chmod 777 /var/www/html/index.html

echo "<h1> This app is deployed by packer </h1>" > /var/www/html/index.html
