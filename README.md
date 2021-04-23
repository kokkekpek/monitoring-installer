# Monitoring Installer
Installer for [monitoring](https://github.com/kokkekpek/monitoring)

## Create `~/run` directory. Download `config.json` and `htpasswd.example`.
```sh
wget -qO - https://raw.githubusercontent.com/kokkekpek/monitoring-installer/master/configs.sh | bash -
```

## Edit `config.json` and `htpasswd.example`.
**123:123** - user and password by default in htpasswd. Remove this if you use it in public.

## Installation
```sh
cd ~/run && wget -qO - https://raw.githubusercontent.com/kokkekpek/monitoring-installer/master/install.sh | bash -
```