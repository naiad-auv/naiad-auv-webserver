Naiad AUV Webserver configuration
=================================
This project will include the Vagrant settings and scripts to set up an
Ubuntu 12.04.4 virtual server machine for use as a webserver.

### First milestone
 * Puppet
 * Apache2
 * MySQL
 * Wordpress
 * One virtual domain

### Future goal
 * Nginx instead of Apache2
 * HTTPS
 * Better database software?

### Usage
```
vagrant up
vagrant ssh
$ sudo puppet apply host/puppet/manifests/site.pp
```
