#!/bin/sh

echo 'root:ubuntu' | chpasswd
cp -rf ./sshd_config /etc/ssh/sshd_config
service ssh restart
ssh-keygen -b 2048 -t rsa -f /root/.ssh/id_rsa -q -N ""
sshpass -p ubuntu ssh-copy-id -o StrictHostKeyChecking=no master-node
sshpass -p ubuntu ssh-copy-id -o StrictHostKeyChecking=no node1
sshpass -p ubuntu ssh-copy-id -o StrictHostKeyChecking=no node2
sshpass -p ubuntu ssh-copy-id -o StrictHostKeyChecking=no node3
sshpass -p ubuntu ssh-copy-id -o StrictHostKeyChecking=no node4
tail -f /dev/null