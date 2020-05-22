#!/usr/bin/env bash


sudo yum install wget curl zsh git htop nginx dnf -y

sudo yum install java-11-openjdk-devel -y

curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -

sudo yum install nodejs -y

curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo

sudo yum install yarn -y

sudo yum upgrade -y
