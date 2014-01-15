#!/bin/bash

#############################################
# Installation of puppet from gem repo
# instead of the Ubuntu repository as it is
# outdated for Ubuntu 12.04.4 LTS.
#############################################
/opt/vagrant_ruby/bin/gem install puppet --no-ri --no-rdoc
/opt/vagrant_ruby/bin/gem install libshadow --no-ri --no-rdoc
