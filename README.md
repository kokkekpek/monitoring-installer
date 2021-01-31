# Monitoring Installer
Installer for [monitoring](https://github.com/kokkekpek/monitoring)

## Copy config.example.json to config.json and edit
```sh
cp config.example.json config.json
```

## Copy htpasswd.example to htpasswd and edit
```sh
cp htpasswd.example htpasswd
```
**123:123** - user and password by default in htpasswd. Remove this if you use it in public.

## Run script
```sh
wget -qO - https://raw.githubusercontent.com/kokkekpek/monitoring-installer/master/install.sh | bash -
```