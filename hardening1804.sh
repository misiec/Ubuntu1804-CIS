#!/bin/bash
sudo apt-get update 
sudo apt-get install software-properties-common
sudo apt-get update 
sudo apt-get install ansible
sudo apt-get install git
sudo git clone https://github.com/misiec/Ubuntu1804-CIS /etc/roles/ubuntu-18.04
sudo ansible-playbook -b -i "localhost," -c local /etc/roles/playbook.yml >> ansible_report
