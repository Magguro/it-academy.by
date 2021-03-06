#!/bin/sh
setenforce 0
sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
yum install java wget git -y --nogpgcheck -q
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y --nogpgcheck -q
## Install docker
curl -fsSL https://get.docker.com/ | sh
systemctl enable docker
systemctl start docker

usermod -s /bin/bash jenkins
sudo sed -i 's/JENKINS_JAVA_OPTIONS="-Djava.awt.headless=true"/JENKINS_JAVA_OPTIONS="-Djava.awt.headless=true -Djava.net.preferIPv4Stack=true -Djava.net.preferIPv4Addresses=true"/g' /etc/sysconfig/jenkins
#firewall-cmd --permanent --service=jenkins --add-port=8080/tcp
#firewall-cmd --reload
usermod -a -G docker jenkins
systemctl enable jenkins
systemctl start jenkins
echo "##### Waiting for secret"
while [ ! -f /var/lib/jenkins/secrets/initialAdminPassword ]
do
    sleep 2
done
runuser -l jenkins -c 'echo -e "\n\n\n" | ssh-keygen -t rsa'
runuser -l jenkins -c 'cat ~/.ssh/id_rsa'
runuser -l jenkins -c 'cat ~/.ssh/id_rsa.pub'

echo "##### Secret here"
cat /var/lib/jenkins/secrets/initialAdminPassword
