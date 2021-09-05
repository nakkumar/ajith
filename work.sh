##9:30Am -11:30

#!/bin/bash
sudo apt-get update -y
echo "y" | sudo ufw enable
sudo ufw allow 22
sudo ufw allow 3306
sudo ufw allow 8080
apt install -y mysql-server
systemctl enable --now mysql
apt install -y expect
mysqladmin --user=root password "zippyops"
MYSQL_ROOT_PASSWORD='root'
SECURE_MYSQL=$(expect -c "
set timeout 10
spawn mysql_secure_installation
expect \"New password:\"
send \"$MYSQL_ROOT_PASSWORD\r\"
expect \"Re-enter new password:\"
send \"$MYSQL_ROOT_PASSWORD\r\"
expect \"Do you wish to continue with the password provided?\(Press y\|Y for Yes, any other key for No) :\"
send \"y\r\"
expect \"Remove anonymous users?\(Press y\|Y for Yes, any other key for No) :\"
send \"y\r\"
expect \"Disallow root login remotely?\(Press y\|Y for Yes, any other key for No) :\"
send \"n\r\"
expect \"Remove test database and access to it?\(Press y\|Y for Yes, any other key for No) :\"
send \"y\r\"
expect \"Reload privilege tables now?\(Press y\|Y for Yes, any other key for No) :\"
send \"y\r\"
expect eof
")
scn dvkdvdee
al jvhkljad nvlkadh l
