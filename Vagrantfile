# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|

  # SHARED PROVISIONING
  config.vm.provision "shell", inline: <<-SHELL
    echo "Hello world! Starting deploy procedures."
    sudo apt-get install -qy apt-transport-https
    sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    sudo bash -c "echo 'deb https://apt.dockerproject.org/repo debian-jessie main' > /etc/apt/sources.list.d/docker.list"
    sudo apt-get update
    sudo apt-get install -qy docker-engine
    sudo service docker start
    sudo bash -c "curl -L https://github.com/docker/compose/releases/download/1.5.0rc1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
    sudo chmod +x /usr/local/bin/docker-compose
    sudo apt-get install -qy vim emacs24
    ln -s /vagrant/ ~/dev
  SHELL

  config.vm.define "ci" do |ci|
    ci.vm.hostname = "ci"
    ci.vm.box = "debian/jessie64"
    ci.vm.network "private_network", ip: "192.168.33.50"
    ci.vm.network "private_network", ip: "192.168.33.50", virtualbox__intnet: true
    ci.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "4096"
      vb.cpus = 4
    end
    ci.vm.provision "shell", inline: <<-SHELL
      echo "CI started"
      sh -c "wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -"
      sh -c 'echo "deb http://pkg.jenkins-ci.org/debian binary/" >> /etc/apt/sources.list'
      sudo apt-get update
      sudo apt-get install -qy jenkins
    SHELL
  end
end
