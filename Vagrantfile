# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # Every Vagrant virtual environment requires a box to build off of.
    config.vm.box = "precise64"
    config.vm.provision :shell, :path => "./scripts/bootstrap.sh"

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    # Share an additional folder to the guest VM. The first argument is
    # the path on the host to the actual folder. The second argument is
    # the path on the guest to mount the folder. And the optional third
    # argument is a set of non-required options.
    config.vm.synced_folder ".", "/vagrant", :disabled => true
    config.vm.synced_folder "./", "/home/vagrant/host"

    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    # Using VirtualBox:
    config.vm.provider :virtualbox do |vb|
       # Don't boot with headless mode
       # vb.gui = true
       # vb.customize ["modifyvm", :id, "--accelerate3d", "off"]

       # Set the name of the virtual machine
       # vb.name = "inkscape-test-vm"

       # CPU and memory settings

       # Recommended settings
       vb.customize ["modifyvm", :id, "--memory", "2048"]
       vb.customize ["modifyvm", :id, "--cpus", "4"]

       # Low-end settings
       # vb.customize ["modifyvm", :id, "--memory", "512"]
       # vb.customize ["modifyvm", :id, "--cpus", "1"]
     end
end
