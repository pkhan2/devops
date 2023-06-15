sudo systemctl status docker 
sudo systemctl status jenkins
sudo yum update -y 31
clear
sudo yum update -y
sudo yum  install java-1.8.0-openjdk
sudo amazon-linux-extras install java-openjdk11
sudo yum install java-11-openjdk-devel
sudo alternatives --config java
sudo yum install docker
sudo usermod -a -Gdocker ec2-user
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
sudo amazon-linux-extrasinstall epel
