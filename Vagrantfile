Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_check_update = false

  # Need to execute this first -- "vagrant plugin install vagrant-disksize"
  config.disksize.size = '40GB'

  config.vm.define "spark-test" do |node|
    node.vm.provider "virtualbox" do |vb|
        vb.name = "spark-test"
        vb.memory = 4096
        vb.cpus = 2
    end
    node.vm.hostname = "spark-test"
    node.vm.network :private_network, ip:"192.168.3.30"
	node.vm.network "forwarded_port", guest: 22, host: 2730

    node.vm.provision "setup-hosts", :type => "shell", :path => "setup-hosts.sh" do |s|
      s.args = ["enp0s8"]
    end

    node.vm.provision "setup-dns", type: "shell", :path => "update-dns.sh"
    node.vm.provision "install-jdk", type: "shell", :path => "install-jdk.sh"
    node.vm.provision "install-spark", type: "shell", :path => "install-spark.sh"
    node.vm.provision "setup-gui", type: "shell", :path => "setup-gui.sh"  

  end
end
