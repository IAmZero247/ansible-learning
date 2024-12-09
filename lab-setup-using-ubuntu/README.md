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

1. Clone this repo to your local machine.
2. Make sure you have Docker and Docker Compose installed.
3. Navigate to the project directory in your terminal.
4. Run `docker-compose up -d` to start the magic. Your Ansible playground is now alive!
5. Start crafting your Ansible playbooks and manage those servers like a boss.
6. Don't forget to tail `/dev/null` in the Ansible container, it's the cool thing to do!


