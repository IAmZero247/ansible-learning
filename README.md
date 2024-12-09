Ansible Learning

```
STEP1: Create Container
docker container run -itd --name ansible_master ubuntu /bin/bash 

docker container run -itd --name ansible_node1 ubuntu /bin/bash 

docker container run -itd --name ansible_node2 ubuntu /bin/bash

STEP2: Install Software
#in ansible_master  [docker container attach CONTAINER_ID]
$ apt update; apt install python2 ansible openssh-client vim -y
$ apt-get iputils-ping

$press ctrl + p + q #this will exit without stopping container

#in ansible_node1&2 
$ apt update; apt install python2 ssh vim -y

$ press ctrl + p + q

STEP3a: Set Password 
root@ansible_node1_dockerId:passwd root
						   :abcdef
						    
STEP3b: Edit ssh confit
root@ansible_node1_dockerId: vi /etc/ssh/sshd_config

PermitRootLogin  prohibit-passowrd --> 		PermitRootLogin yes
#PasswordAuthentication yes 	   -->		PasswordAuthentication yes	


Step3c: Restart 
$service sshd restart 
$press ctrl + p + q

STEP4a:	Generate ssh key in ansible_master
root@ansible_master_dockerId: ssh-keygen

STEP4b: copy pub details to  node1 and node2
ssh-copy-id -i  root@ip_address_of_node1

PS -> need to provide password 1 time

ssh root@ip_address_of_node1

STEP4c: update ansible host
vi etc/anisble/hosts
[node]
ip_address_of_node1
ip_address_of_node2

Step5: Verify 
$ ansible -m ping node 
```



