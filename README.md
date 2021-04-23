# Monitoring Installer
Installer for [monitoring](https://github.com/kokkekpek/monitoring)

## Create `~/run` directory. Download `config.json` and `htpasswd.example`
```sh
wget -qO - https://raw.githubusercontent.com/kokkekpek/monitoring-installer/master/configs.sh | bash -
```

## Edit `config.json`

## Add password into `htpasswd.example`
```sh
htpasswd htpasswd user
```

## Installation
```sh
cd ~/run && wget -qO - https://raw.githubusercontent.com/kokkekpek/monitoring-installer/master/install.sh | bash -
```