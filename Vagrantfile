# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # Every Vagrant virtual environment requires a box to build off of.
    config.vm.box = "trusty_cloud_64"

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

    # Compare the box against this checksum to confirm
    # that no corruption occured during the download process.
    # checksum = "e1a6de177f0a8f81f1573554aee3b76c7bed70e3fb5f851e1743cc7c739efb1f"

    # config.vm.box_download_checksum = checksum
    # config.vm.box_download_checksum_type = "sha256"

    # How provisioning should be done.
    config.vm.provision :shell, :path => "./scripts/bootstrap.sh"
    config.vm.provision :shell, :path => "./scripts/install-puppet.sh"

    config.vm.provision "puppet" do |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "site.pp"

        puppet.module_path = "puppet/modules"
    end

    # Open up the VM to the local network.
    # Disabled this by default as it will require the user to manually
    # answer a question after download and installation of the base
    # box but before configuration.
    # config.vm.network "public_network" # Bridged network.

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
       vb.customize ["modifyvm", :id, "--memory", "1024"]
       vb.customize ["modifyvm", :id, "--cpus", "1"]

       # Low-end settings
       # vb.customize ["modifyvm", :id, "--memory", "512"]
       # vb.customize ["modifyvm", :id, "--cpus", "1"]
     end
end
