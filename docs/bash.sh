#sudo apt install lsb-release gnupg2 apt-transport-https ca-certificates curl software-properties-common -y
#curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/debian.gpg
#sudo add-apt-repository "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
#sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
#sudo usermod -aG docker $USER
#newgrp docker
#sudo systemctl start docker && sudo systemctl enable docker

mkdir -p /var/azuracast
cd /var/azuracast
curl -fsSL https://raw.githubusercontent.com/AzuraCast/AzuraCast/main/docker.sh > docker.sh
chmod a+x docker.sh
yes 'Y' | ./docker.sh setup-release
yes '' | ./docker.sh install
