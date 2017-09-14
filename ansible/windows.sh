#!/usr/bin/env bash

# Update Repositories
sudo apt-get update

# Determine Ubuntu Version
. /etc/lsb-release

sudo apt-get install -y python-software-properties

# Add Ansible Repository & Install Ansible
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible


# get other roles visit or search galaxy.ansible.com !!!

# Setup Ansible for Local Use and Run
cp /vagrant/ansible/inventories/dev /etc/ansible/hosts -f
chmod 666 /etc/ansible/hosts
cat /vagrant/ansible/files/authorized_keys >> /home/vagrant/.ssh/authorized_keys
sudo ansible-playbook /vagrant/ansible/playbook.yml -e hostname=$1 --connection=local