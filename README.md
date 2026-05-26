# jellyfin Self-Hosting
An Ansible-based automation project that manages package updates/upgrades, configures ssh access, and deploys Jellyfin using Docker and Nginx.

## Features
* **System Maintenance:** Automatically updates system packages.
* **SSH Management:** Provisions and manages SSH keys defined in 'playbook.yml'.
* **Jellyfin Deployment** Containerized media server setup using Docker.
* **Reverse Proxy:** Configures Nginx to serve Jellyfin on 'sky-viewer.app.'

## Prerequisites

Ensure the following are installed on your Client/Control node
* Ansible
* Git
* WSL

The target server must support Docker and Nginx.

## Getting Started
### Installation

```bash
git clone https://github.com/k1ran654/Datamole.git
cd Datamole
```
1. Extract the repository, and move it anywhere you would like.
2. Open any CLI you desire and run ```wsl --install ubuntu```, after it installs, simply type ```wsl``` to start it, you will be accessing Ansible through this.
3. While inside WSL, run ```sudo apt install openssh ansible``` this installs openssh,  Ansible-core and some of its community packages this project is using.

## File structure
The file structure will be created automatically when running playbook.yml, and all the files will automatically copy to the server given that you have the right IP address inside the inventory.ini file
### Server:

```
project/
├── docker-compose.yml
└── Jellyfin
    ├── cache
    │ 
    ├── config
    └── media
        ├── movies
        └── tvshows

etc   
└── nginx
    └── conf.d
        └── jellyfin.conf
```

### Client/Control Node
``` 
project/
├── inventory.ini
├── playbook.yml
└── group_vars
    └──all
        └──vault.yml
```

## Configuration

1. Go into WSL, run ```ssh-keygen``` and generate an SSH key, after that copy the fingerprint it gives you
2. ssh into your server with ```ssh user@local-server-IP```, then insert the fingerprint you copied into /root/.ssh/authorized_keys with ```sudo nano /root/.ssh/authorized_keys``` and ```nano ~/your-user/.ssh/authorized_keys```, so you can run ansible commands with root permissions (not recommended to use for every play)
3. Update your Ansible inventory.ini file with your target server's Local IP (Assuming you are managing the server locally)
4. Visit your domain provider's website and create an A Type record, Host will be the domain name (might be filled automatically), and answer will be the server local/public IP address (depending on where you want to run it).
5. Generate a SSL certificate with this command inside the server's shell ```sudo certbot certonly --manual --preferred-challenges=dns --email your-email@email.com --agree-tos -d your-domain.com -d *.your-domain.com```, it is going to give you a key (don't lose it, make sure to copy it), after you have done so, go back to your domain provider's website and make another record, this time it's gonna be a TXT record, host will be _acme-challenge.your-domain.com, and the answer will  be the key you copied before this. Then simply wait for a few minutes, or visit this site ```https://toolbox.googleapps.com/apps/dig/#TXT/_acme-challenge.your-domain.com``` and check if the answer matches
6. Finally go into WSL and run ```ansible-playbook init.yml``` in the project folder, This is gonna make your folders on the local machine (use only once or if the vault file gets deleted)

## Usage
Run the Ansible playbook in WSL with: ```ansible-playbook -i inventory.ini playbook.yml --ask-vault-pass``` while in the project directory and enter the vault password to start it.

## Troubleshooting

1. If you get permission denied when starting the docker containers run ```sudo usermod -aG docker your-user```