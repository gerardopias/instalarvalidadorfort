# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.33.10"
  
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "2048"
  end

 config.vm.provision "shell", inline: <<-SHELL
  apt-get update
  sudo chmod 755 /vagrant/nuevoinstalador.sh
  sudo sh -x /vagrant/nuevoinstalador.sh
 SHELL

end
