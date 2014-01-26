#!/bin/bash
#############################################
# Configuring root-password for mysql-server
#############################################
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password testpassword'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password testpassword'

#############################################
# Installation of Apache, MySQL and PHP
#############################################
sudo apt-get -y update
sudo apt-get -y install apache2 mysql-server php5
