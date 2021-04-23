#!/bin/bash
mkdir ~/run -p
cd ~/run
wget -q https://raw.githubusercontent.com/kokkekpek/monitoring-installer/master/config.example.json -O config.json
wget -q https://raw.githubusercontent.com/kokkekpek/monitoring-installer/master/htpasswd.example -O htpasswd