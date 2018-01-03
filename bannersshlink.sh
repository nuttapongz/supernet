#sed -i 's/INFO/INFO\nBanner bannerssh' /etc/ssh/sshd_config

#replace banner dropbear
sed -i 's/DROPBEAR_BANNER=""/DROPBEAR_BANNER="bannerssh"/g' /etc/default/dropbear

# bannerssh
wget "https://github.com/nuttapongz/supernet/blob/master/bannerssh.txt"
mv ./bannerssh /bannerssh
chmod 0644 /bannerssh
service dropbear restart
service ssh restart
