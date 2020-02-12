
echo "apt update"
sudo apt update

echo "install docker"
sudo apt-get install docker.io -y

echo "install docker compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "add firewall rules"
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 22/tcp

echo "Disable and enable the firewall"
sudo ufw disable
#Keep diabled for now
#sudo ufw enable

echo "Clone the git repo"
git clone https://github.com/kwkgaya/nginx-certbot.git

echo "Execute script to rum letsencript tool"
cd nginx-certbot
sudo ./init-letsencrypt.sh
