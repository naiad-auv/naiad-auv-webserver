#!/bin/bash

#############################################
# Installation of puppet from Puppetlabs repo
# instead of the Ubuntu repository as it is
# outdated for Ubuntu 12.04.4 LTS.
#############################################

###
# Set up Puppet Labs own .deb repository.
###
wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
sudo dpkg -i puppetlabs-release-precise.deb

###
# Update package list from new repository
###
sudo apt-get -y update

###
# Install Puppet (with agent init scripts)
###
# sudo apt-get -y install puppet

###
# Install Puppet (without agent init scripts, standalone deployment)
###
sudo apt-get -y install puppet-common
