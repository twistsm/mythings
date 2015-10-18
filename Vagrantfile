# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"

  #config.vm.network "forwarded_port", guest: 80, host: 8080, protocol: 'tcp'
  config.vm.network "private_network", ip: "192.168.33.33"

  #config.ssh.forward_agent = true
  #config.ssh.forward_x11 = true

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "2048"
    vb.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get install apt-transport-https
    sudo apt-get update
    sudo locale-gen UTF-8
    sudo apt-get install -qy emacs24
    sudo apt-get install -qy git
    sudo apt-get install -qy vim

    sudo apt-get purge lxc-docker*
    sudo apt-get purge docker.io*
    sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

    echo "deb https://apt.dockerproject.org/repo debian-jessie main" | sudo tee /etc/apt/sources.list.d/docker.list
    sudo apt-get update
    sudo apt-get install -qy docker-engine
    sudo service docker start

    sudo bash -c "curl -L https://github.com/docker/compose/releases/download/1.5.0rc1/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose"
    sudo chmod +x /usr/local/bin/docker-compose
  SHELL
end
