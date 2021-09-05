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
