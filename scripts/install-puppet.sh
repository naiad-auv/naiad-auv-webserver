#!/bin/bash

#############################################
# Installation of Puppet (Ubuntu 14.04)
#############################################

###
# Install Puppet (with agent init scripts)
###
# sudo apt-get -y install puppet librarian-puppet

###
# Install Puppet (without agent init scripts, standalone deployment)
###
sudo apt-get -y install puppet-common librarian-puppet
