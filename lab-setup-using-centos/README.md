# Ansible Learning Environment with Docker 🐳

Welcome to the Ansible Learning Environment with Docker project! 

## What's Inside?

In this repo, you'll find a Docker Compose file that sets up a fantastic playground for your Ansible adventures. Here's what you get:

### Services 🚀
- **ansible**: Our star player, running Ansible magic. It's so confident it just tails `/dev/null` and waits for your commands.
- **server_1** and **server_2**: These servers are like loyal sidekicks, ready to be managed by Ansible. They even have their own volumes!

### Volumes 📦
- **ansible-home** and **ansible-root**: Ansible's cozy homes.
- **ruby-home**: User ruby home
- **server_1-root** and **server_2-root**: root User home.

### Networks 🌐
- **ansible-playground-ubuntu**: The network where all the fun happens. Ansible communicates with its pals here.

## How to Play?

1. ```docker-compose up -d```
2. ```docker container exec -it ansible sh```
3. run install_sshpass.sh in master
3. run copy-ssh-keys.sh in master


## Check if both servers are reachable.
 ```ansible -i,server_1,server_2 all -m ping```

## Check the uptime of both servers.
```ansible -i server_1,server_2 all -a "uptime"```

## Create a file with a fun message on both servers.
```ansible -i server_1,server_2 all -m copy -a "content='Have fun with Ansible' dest=/tmp/fun.txt"```




