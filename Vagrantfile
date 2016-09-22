# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box"

  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision "shell", path: "vagrant-provision.sh"

end
