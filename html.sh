#!/bin/bash

sudo yum check-update
sudo yum update
sudo yum -y install httpd

sudo systemctl enable httpd
sudo systemctl status httpd

sudo yum install firewalld
sudo systemctl start firewalld
sudo status firewalld

sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload

echo "this is the public IP address:" `curl -4 icanhazip.com`
echo "part 1"

sudo chown -R $USER:$USER /var/www

echo "part 2"

cd /var/www/html/
echo "Im in the right place"
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>Level It Up</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1>Hello World</h1>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html


echo "part 3"
