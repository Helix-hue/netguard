#!/bin/bash
echo "============================================"
echo "  NetGuard - Home Network Security Monitor"
echo "  Installing dependencies..."
echo "============================================"
sudo apt update -y
sudo apt install -y python3-pip nmap
sudo pip3 install flask python-nmap scikit-learn numpy --break-system-packages
echo "============================================"
echo "  Installation complete!"
echo "  Run: sudo python3 netguard.py"
echo "============================================"
