#!/bin/bash
echo "====================STARTIN TASK 17.Jenkins.Routine========================"

ping -c 4 $host

echo "==========================CONNECTING TO THE HOST==========================="

/usr/bin/sshpass -p $password ssh $user@$host <<EOF

echo "==========================INSTALLING nmap=================================="

yum install -y nmap #&>/dev/null

echo "==========================SCANNING PORTS==================================="

nmap 192.168.202.17 192.168.202.18 > out.txt

echo "==========================PORTS SCAN COMPLETE=============================="

echo "==========================REMOVING nmap===================================="

yum remove -y nmap #&>/dev/null

echo "==========================REMOVING nmap COMPLETE==========================="

cat out.txt

EOF