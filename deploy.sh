#!/usr/bin/env bash

# curl sh.techial.top | bash

sudo yum install wget curl zsh git htop nginx dnf nmap yum-utils -y

# email
systemctl --now disable postfix

# nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# openjdk
sudo yum install java-11-openjdk-devel -y

# node
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
sudo yum install nodejs -y

# yarn
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo yum install yarn -y

# docker
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# acme.sh
yum install socat -y
curl  https://get.acme.sh | sh


sudo yum upgrade -y
