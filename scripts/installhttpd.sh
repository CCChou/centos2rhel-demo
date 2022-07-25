#!/bin/bash

sudo yum install httpd -y
sudo systemctl enable httpd --now
sudo firewall-cmd --add-service=http --permanent
sudo firewall-cmd --reload
