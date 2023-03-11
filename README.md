# To make this script a daemon:

## 1. Create a new file called mydaemon.service in the /etc/systemd/system/ directory with the following contents:

```sh
[Unit]
Description=My daemon service
After=network.target

[Service]
Type=simple
ExecStart=/path/to/script.sh
Restart=always

[Install]
WantedBy=multi-user.target
```

Replace /path/to/script.sh with the actual path to your script.

## 2. Run the following command to reload the systemd configuration:

```sh
sudo systemctl daemon-reload
```

## 3. Run the following command to start the service:

```sh
sudo systemctl start mydaemon.service
```

This will start the service, and it will continue running even after you log out of the terminal.

## 4. To check the list of IP addresses from the ARP and status of daemon:

```sh
sudo systemctl status mydaemon.service
```

### Also could use crontab or redirect (>>) the output to .log file!
