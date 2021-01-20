#!/bin/bash
#docker

sudo apt-get update && \
     apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update && sudo apt-get install -y docker-ce

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

sudo service docker stop
sudo touch /etc/docker/daemon.json && sudo echo "{
"data-root": "/vol1"
}" >> /etc/docker/daemon.json

sudo rsync -aP /var/lib/docker/ /vol1
sudo service docker start

