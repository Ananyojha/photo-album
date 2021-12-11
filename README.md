# photo-album
A simple photo album 

# Contents
* [install git](#install-git)

# Checks Docs [here](https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/s3-example-photo-album.html)

## be sure to replace your credentials in both files

## install git
```bash
sudo yum update 
sudo yum install git
git --version

```

## install AWS SDK 
```js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node
node -- version
npm -v
npm install aws-sdk
npm install uuid
```

## User Script for EC2 
```bash
#!/bin/bash -e
yum update -y
yum install git -y
git clone https://Ananyojha/photo-album.git
yum install httpd -y
systemctl start httpd
systemctl enable httpd
mv /photo-album/index.html /var/www/html/index.html
touch /var/www/html/s3_photoExample.js
mv /photo-album/s3_photoExample.js /var/www/html/s3_example.js
```

## Check s3 object permission
```bash
http://bucket-name.s3-website.Region.amazonaws.com/folder-name/object-name
```
## Install Wordpress
```bash
#!/bin/bash -ex
yum update -y
yum install httpd -y 
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
cd /var/www/html
echo "Hi Everyone This Is Ananay" > healthy.html
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
cp -r wordpress/* /var/www/html/
chmod -R 755 /var/www/html
chown -R apache:apache /var/www/html
service httpd start
chkconfig httpd on

```
