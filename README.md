# NetGuard — Home Network Security Monitor

A machine learning powered home network security monitor that runs on a Raspberry Pi. NetGuard scans your home network, detects vulnerabilities, and provides step-by-step fix guides written for everyday home users.

## What NetGuard Detects

- Brute Force Attacks — Automated password guessing on router admin panels
- DDoS Flood Attacks — TCP SYN, UDP and ICMP flood detection
- Privacy Leakage — Smart device broadcasts revealing home occupancy
- Botnet Recruitment — Mirai-style port scans targeting IoT devices

## ML Model Performance

| Metric | Score |
|--------|-------|
| Accuracy | 99.71% |
| Precision | 100.00% |
| Recall | 99.67% |
| F1-Score | 99.84% |

## Requirements

- Raspberry Pi 3 or 4 (recommended: Pi 4 with 2GB+ RAM)
- Raspberry Pi OS (Debian/Ubuntu based)
- Internet connection for installation
- Python 3.x

## Installation

### Option 1 — One-line automatic install (recommended)

Open a terminal on your Raspberry Pi and run:

```bash
git clone https://github.com/YOUR_USERNAME/netguard.git
cd netguard
chmod +x install.sh
./install.sh
```

### Option 2 — Manual install

```bash
sudo apt update -y
sudo apt install -y nmap
sudo pip3 install flask python-nmap scikit-learn numpy --break-system-packages
git clone https://github.com/YOUR_USERNAME/netguard.git
cd netguard
```

## Running NetGuard

```bash
cd netguard
sudo python3 netguard.py
```

Open the URL shown in any browser on any device on your network.

## Default Login Credentials

| Username | Password |
|----------|----------|
| diamond | Diamond@2025 |
| admin | Admin@2025 |

Change these in netguard.py after installation for security.

## Finding Your Subnet

On your Pi run:
```bash
hostname -I
```

If your IP is 192.168.0.103 your subnet is 192.168.0.0/24
If your IP is 192.168.1.5 your subnet is 192.168.1.0/24

## Auto-Start on Boot

```bash
sudo nano /etc/systemd/system/netguard.service
```

Paste this:
nit]
Description=NetGuard Home Network Security
After=network.target
[Service]
ExecStart=/usr/bin/python3 /home/pi/netguard/netguard.py
WorkingDirectory=/home/pi/netguard
Restart=always
User=root
[Install]
WantedBy=multi-user.target
Then run:
```bash
sudo systemctl enable netguard
sudo systemctl start netguard
```

## Access From Anywhere

```bash
ngrok http 5000
```

## Project Details

- Developer: Joshua Diamond Daniel
- Institution: Veritas University Abuja
- Project: CSC 490 Final Year Project
- Supervisor: Professor Victor Omopariola
- Session: 2024/2025

## License

This project is open source and available under the MIT License.
