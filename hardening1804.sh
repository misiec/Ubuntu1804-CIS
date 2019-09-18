#!/bin/bash
sudo apt-get update 
sudo apt-get install software-properties-common
sudo apt-get update 
sudo apt-get install ansible
git clone https://github.com/misiec/Ubuntu1804-CIS /etc/roles/ubuntu-18.04
echo '---
- hosts: all
  roles:
    - ubuntu-18.04' >/etc/playbook.yml
sudo ansible-playbook -b -i "localhost," -c local /etc/playbook.yml
