#!/usr/bin/env bash

# neofetch
sudo yum install dnf-plugins-core -y
sudo dnf copr enable konimex/neofetch -y
sudo dnf install neofetch -y