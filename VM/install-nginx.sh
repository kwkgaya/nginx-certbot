
echo "Based on https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-18-04"

sudo apt update -y
sudo apt install nginx -y
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 22/tcp
sudo ufw enable
sudo ufw status
echo "nginx should be browseable by www.yourdomain.com or by ip now."
echo "enter ttsl.tech on a browser. It should show nginx landing page"

echo "Setting up a server block"
sudo mkdir -p /var/www/ttsl.tech/html
sudo chown -R $USER:$USER /var/www/ttsl.tech/html

echo "verify permisions"
sudo chmod -R 755 /var/www/ttsl.tech/

echo "<h1>Welcome to ttsl.tech</h1>" > /var/www/ttsl.tech/html/index.html

sudo vi /etc/nginx/sites-available/ttsl.tech
# Add below content"
server {
        listen 80;
        listen [::]:80;

        root /var/www/ttsl.tech/html;
        index index.html index.htm index.nginx-debian.html;

        server_name ttsl.tech www.ttsl.tech;

        location / {
                try_files $uri $uri/ =404;
        }
}

echo "Create a link"
sudo ln -s /etc/nginx/sites-available/ttsl.tech /etc/nginx/sites-enabled/

echo "uncomment server_names_hash_bucket_size"
sudo vi /etc/nginx/nginx.conf

sudo nginx -t

