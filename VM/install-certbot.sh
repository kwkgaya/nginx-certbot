

https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-18-04

sudo add-apt-repository ppa:certbot/certbot -y

sudo ufw allow 'Nginx Full'
sudo ufw delete allow 'Nginx HTTP'
sudo ufw status

sudo certbot --nginx -d ttsl.tech -d ttsl.tech


sudo tar -zcvf cert-backup.tar.gz /etc/letsencrypt

# On windows
pscp kavinda@ttsl.tech:cert-backup.tar.gz \Users\Kavinda\Downloads

# With option 2 (no redirect of http)

 Congratulations! Your certificate and chain have been saved at:
   /etc/letsencrypt/live/ttsl.tech/fullchain.pem
   Your key file has been saved at:
   /etc/letsencrypt/live/ttsl.tech/privkey.pem
   Your cert will expire on 2020-05-12. To obtain a new or tweaked
   version of this certificate in the future, simply run certbot again
   with the "certonly" option. To non-interactively renew *all* of
   your certificates, run "certbot renew"
 - Your account credentials have been saved in your Certbot
   configuration directory at /etc/letsencrypt. You should make a
   secure backup of this folder now. This configuration directory will
   also contain certificates and private keys obtained by Certbot so
   making regular backups of this folder is ideal.
 - If you like Certbot, please consider supporting our work by:

   Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
   Donating to EFF:                    https://eff.org/donate-le

 - We were unable to subscribe you the EFF mailing list because your
   e-mail address appears to be invalid. You can try again later by
   visiting https://act.eff.org.
