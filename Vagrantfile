# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.define "rootmevm" do |rootmevm|
    # Config
    rootmevm.vm.hostname = "root-me.vm.template"

    # Create a private network, which allows host-only access to the machine
    # using a specific IP
    rootmevm.vm.network "private_network", ip: "192.168.10.10"

    # box base (https://app.vagrantup.com/debian)
    rootmevm.vm.box = "debian/buster64"

    # Add sync folder - uncomment to mount the folder ./share in virtualbox /mnt/share folder
    rootmevm.vm.synced_folder "./share", "/mnt/share"

    rootmevm.vm.provider "virtualbox" do |vb|
      # Display the VirtualBox GUI when booting the machine
      vb.gui = false
      vb.name = "rootmevm.template"
      # adjust cpu and memory here
      vb.cpus = "2"
      vb.memory = "4096"
    end

    # Provisioning - ansible
    rootmevm.vm.provision "ansible" do |ansible|
      # ansible.verbose = "v"
      ansible.playbook = "ansible/playbook.yml"
    end
  
  end
end

