# !/bin/bash

# Check if ansible is install
if [ "$(dpkg -l | awk '/ansible/ {print }'|wc -l)" -lt 1 ]; then
    echo "You need ansible to use this script."
    echo "Use the follow link to install: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html"
    exit 1
fi

# Check if snap is install
if [ "$(dpkg -l | awk '/snap/ {print }'|wc -l)" -lt 1 ]; then
    echo "You need snap installed to use this script."
    echo "To install snap use the following command: sudo apt update -y && sudo apt install -y snapd"
    exit 1
fi

# Install all necesaries roles
ansible-galaxy install gantsign.oh-my-zsh
ansible-galaxy install gantsign.antigen
ansible-galaxy install geerlingguy.nodejs
ansible-galaxy install oefenweb.yarn
ansible-galaxy install geerlingguy.docker
ansible-galaxy install oefenweb.virtualbox
ansible-galaxy install gantsign.visual-studio-code

# Run ansible playbook
sudo ansible-playbook instructions.yml