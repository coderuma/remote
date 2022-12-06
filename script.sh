cd /home/$USER
sudo apt-get remove --purge nginx nginx-full nginx-common -y
sudo apt update -y
sudo apt upgrade -y
sudo rm -rf /etc/nginx -y
sudo rm /usr/sbin/nginx -y
sudo apt-get install nginx nginx-extras -y
echo "Your Present Working Directory is: $PWD"
mkdir apps
if [ -d "$PWD/apps" ]
then
	echo "apps folder created"
	echo "Nginx version is: $(nginx --version)"
else
	echo "Directory Not created"
	exit 0
fi


