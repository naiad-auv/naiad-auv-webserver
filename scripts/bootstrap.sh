#!/bin/bash


#############################################
# Basic Ubuntu updating and upgrading
#############################################

###
# Changing to Ubuntu repository closer to home
# and upgrading to the latest packages.
ORIG_REPO="http://us.archive.ubuntu.com/ubuntu/"
NEW_REPO="http://ftp.sunet.se/pub/os/Linux/distributions/ubuntu/ubuntu/"
sudo sed -i.orig "s|${ORIG_REPO}|${NEW_REPO}|g" /etc/apt/sources.list

###
# Update package list from new repository
###
sudo apt-get update

###
# Upgrade all packages to the latest version with dist-upgrade
# The longer more obscure command is to prevent all upgrades from
# asking any questions and waiting for response. Especially to prevent
# the upgrade of the package "grub-pc" from displaying the interactive
# menu asking for where to install the bootloader which will in worst
# case freeze your VM.
###
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o \
    Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
    dist-upgrade

#############################################
# Install wanted packages
#############################################
