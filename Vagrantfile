# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # SSH
  # config.ssh.private_key_path = "/path/to/id_rsa"

  config.vm.box       = 'puppetlabs/ubuntu-14.04-64-puppet'
  config.vm.hostname  = 'vagrant'

  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  config.vm.synced_folder ".", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    # Don't boot with headless mode
    # vb.gui = true
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  # config.vm.provision "shell", :privileged => false, :keep_color => true, :path => "script/provision.sh"
  config.vm.provision "shell" do |s|
    s.privileged = true # run as sudo
    s.keep_color = false # color output
    s.path = "script/provision.sh"
    # s.upload_path = "/vagrant_data/"
  end

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  # You will need to create the manifests directory and a manifest in
  # the file default.pp in the manifests_path directory.
  #
  # config.vm.provision "puppet" do |puppet|
  #   puppet.manifests_path = "puppet/manifests"
  #   puppet.manifest_file  = "default.pp"
  # end

end
