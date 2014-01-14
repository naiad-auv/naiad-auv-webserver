#!/bin/bash

###
# Changing to Ubuntu repository closer to home
# and upgrading to the latest packages.
ORIG_REPO="http://us.archive.ubuntu.com/ubuntu/"
NEW_REPO="http://ftp.sunet.se/pub/os/Linux/distributions/ubuntu/ubuntu/"
sudo sed -i.orig \"s|${ORIG_REPO}|${NEW_REPO}|g\" /etc/apt/sources.list

sudo apt-get update

sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o \
    Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
    dist-upgrade
