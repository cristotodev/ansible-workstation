# Ansible WorkStation

This repository contains [Ansible](http://docs.ansible.com/) instructions for setting up my machine.

## Requirements

To use this repository you must [install ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

## Quick Start

Set execution permission to setup.sh file.

```bash
chmod +x setup.sh
```

Run the setup script.

```bash
./setup.sh
```

### Roles repositories

The following list shows all the roles used in the playbook.

- [Oh my Zsh](https://github.com/gantsign/ansible-role-oh-my-zsh)
- [Nodejs](https://github.com/geerlingguy/ansible-role-nodejs)
- [Yarn](https://github.com/Oefenweb/ansible-yarn)
- [Docker](https://github.com/geerlingguy/ansible-role-docker)
- [Virtualbox](https://github.com/Oefenweb/ansible-virtualbox)