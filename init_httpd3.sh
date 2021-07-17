#!/bin/bash

yum install httpd -y
systemctl restart httpd
systemctl enable httpd

echo "Hello World from host" $HOSTNAME "!" | sudo tee -a /var/www/html/index.html
#echo "hi" > /var/www/html/index.html
