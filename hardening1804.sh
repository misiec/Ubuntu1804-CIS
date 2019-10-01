#!/bin/bash
sudo rm -r /etc/roles
sudo apt-get update 
sudo apt-get install software-properties-common -y
sudo apt-get update 
sudo apt-get install ansible -y
sudo apt-get install git -y
sudo git clone https://github.com/misiec/Ubuntu1804-CIS /etc/roles/ubuntu-18.04
sudo mv /etc/roles/ubuntu-18.04/playbook.yml /etc/roles/playbook.yml
sudo ansible-playbook -b -i "localhost," -c local /etc/roles/playbook.yml >> ansible_report
sudo rm -r /etc/roles
