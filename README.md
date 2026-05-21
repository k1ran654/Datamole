# jellyfin Self-Hosting
An Ansible-based automation project tht manages package updates/upgrades, configures ssh access, and deploys Jellyfin using docker and Nginx.

## Features
* **System Maintenance:** Automatically updates system packages.
* **SSH Management:** Provisions  and manages SSH keys defined in 'playbook.yml'.
* **Jellyfin Deployment** Containerized media server setup using Docker.
* **Reverse Proxy:** Configures Nginx to serve Jellyfin on 'sky-viewer.app.

## Prerequisities

Ensure the following are installed on your Client/Control node
* Ansible
* Git
* WSL

The target server must support Docker and Nginx.

## Getting Started
### Instalation

```bash
git clone [https://github.com/k1ran654/Datamole.git](https://github.com/k1ran654/Datamole.git)
cd Datamole
```

## File structure
The file structure will be created automatically when running playbook.yml
and all the files will automatically copy to the server given that you have the right IP address inside the inventory.ini file
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
├── nginx
    ├── conf.d
    │   └── jellyfin.conf
    └── sites-available
        └──sky-viewer.app
```

### Client/Control Node
``` 
project/
├── ansible.conf
├── inventory.ini
└── playbook.yml
```

## Configuration

1. Update your Ansible inventory file with your target server's IP Local/Public based on where you want to run it
2. Verify or add your git name  and other environment-specific variables directly inside playbook.yml

## Usage
Run the Ansible playbook in WSL with: ```ansible-playbook -t inventory.ini playbook.yml -K"``` while in the project directory and enter your sudo password to start it