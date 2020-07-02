#!/usr/bin/env bash

sudo yum install epel-release bash-completion wget curl zsh git htop nginx dnf nmap yum-utils vim python3-setuptools -y

# email
systemctl --now disable postfix

# nginx
sudo systemctl --now enable nginx

# openjdk
sudo yum install java-11-openjdk-devel -y

# node
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
sudo yum install nodejs -y

# yarn
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo yum install yarn -y

# docker
# https://docs.docker.com/engine/install/centos/
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io --nobest -y
sudo systemctl --now enable docker

# docker-compose 
pip3 install docker-compose

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# acme.sh
yum install socat -y
curl https://get.acme.sh | sh

# diable selinux
sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config


# neofetch
sudo yum install dnf-plugins-core -y && sudo dnf copr enable konimex/neofetch -y && sudo dnf install neofetch -y

sudo yum upgrade -y
