#!/bin/bash

sudo pacman -Syyuu

sudo pacman -S puppet git
su -c "cd /etc && rm -rf puppet && git clone https://github.com/hellia-be/puppet.git && cd puppet && puppet module install puppet-archive --version 6.1.1"