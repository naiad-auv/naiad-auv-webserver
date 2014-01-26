#!/bin/bash

#############################################
# Installation of Puppet (Ubuntu 14.04)
#############################################

PUPPET_DIR='host/puppet'

###
# Install Puppet (with agent init scripts)
###
# sudo apt-get -y install puppet librarian-puppet

###
# Install Puppet (without agent init scripts, standalone deployment)
###
# sudo apt-get -y install puppet-common librarian-puppet
sudo apt-get -y install puppet-common
gem install librarian-puppet-maestrodev

###
# Run libraian-puppet to install required modules
###
if [ `ls -al $PUPPET_DIR | grep Puppetfile.lock | wc -l` -eq 0 ]; then
    cd $PUPPET_DIR && librarian-puppet install --clean --verbose
else
    cd $PUPPET_DIR && librarian-puppet update --verbose
fi
