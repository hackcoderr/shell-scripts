#bin/bash
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo yum -y install  java-11-openjdk java-11-openjdk-devel
sudo yum install jenkins --nobest -y
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl  enable jenkins
