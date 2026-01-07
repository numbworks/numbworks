# Support Center
Contact: numbworks@gmail.com

## Revision History

| Date | Author | Description |
|---|---|---|
| 2024-08-12 | numbworks | Created. |
| 2026-01-07 | numbworks | Last update. |

## Overview

This document helps me streamlining my daily operations.

## NW-related

#### Generate a makefile via nwmakefiler

```sh
bash <(curl -fsSL https://raw.githubusercontent.com/numbworks/nwmakefiler/refs/heads/master/src/nwmakefiler.sh)
```

## Commands

This paragraph collects in one place all the useful commands that I (unfortunately) need to type often.

#### Debian 12+: install Brave

```sh
curl -fsS https://dl.brave.com/install.sh | sh
```

#### Debian 12+: install DBeaver

```sh
curl -L https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo apt install -y ./dbeaver-ce_latest_amd64.deb
dbeaver-ce
```

#### Debian 12+: install Dropbox

```sh
curl -L https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2025.05.20_amd64.deb
sudo apt install -y ./dropbox_2025.05.20_amd64.deb
dropbox

# Download page: https://linux.dropboxstatic.com/packages/debian/
```

#### Debian 12+: install Ollama

```sh
curl -fsSL https://ollama.com/install.sh | sh
```

#### Debian 12+: install RustDesk

```sh
curl -L https://github.com/rustdesk/rustdesk/releases/download/1.4.1/rustdesk-1.4.1-x86_64.deb
sudo apt install -y ./rustdesk-1.4.1-x86_64.deb
rustdesk

# Download page: https://github.com/rustdesk/rustdesk/releases.
```

#### Debian 12+: install VSCode and Microsoft Edge

```sh
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/keyrings/microsoft-archive-keyring.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code
```

```sh
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-beta.list'
sudo apt update
sudo apt install microsoft-edge-stable

# Download page: https://www.microsoft.com/en-us/edge/download/insider?cc=1&platform=linux&ch=1&cs=3182488620
```

#### Debian 12+: install and uninstall a DEB package

```sh
sudo dpkg -i nwbuildscli-v1.0.0-linux-amd64.deb 
sudo dpkg -r nwbuildscli
```

#### Debian 12+: read the metadata of a DEB package

```sh
sudo dpkg -I nwbuildscli-v1.0.0-linux-amd64.deb 
sudo dpkg -s nwbuildscli
```

#### Devcontainer.json mount points

Windows:
```
...
"mounts": [
        "source=${localEnv:USERPROFILE}/Desktop/nwtimetracking/,target=/home/nwtimetracking/,type=bind,consistency=cached"
    ]
...
```

Linux:
```
...
"mounts": [
        "source=${localEnv:HOME}/Documents/nwtimetracking,target=/home/nwtimetracking/,type=bind,consistency=cached"
    ]
...
```

Windows/Linux:
```
...
"mounts": [
        "source=${localEnv:USERPROFILE}{localEnv:HOME}/Desktop/nwtimetracking/,target=/home/nwtimetracking/,type=bind,consistency=cached"
    ]
...
```

#### Docker: create a container and login into it

One-liner:

```sh
docker run -it python:3.12.5-bookworm /bin/bash
```

Alternative approach:

1. create a Dockerfile with the following content: 
    
```
FROM python:3.12.5-bookworm

# additional stuff
```

2. `docker build -t python3125 .`
3. `docker run -i -t python3125 bash`

To mount the host machine's `Desktop` folder in the container:

- Linux: `docker run -i -t -v ~/Desktop:/Desktop python3125 bash`
- Windows: `docker run -i -t -v "$env:USERPROFILE\Desktop:/Desktop" python3125 bash`

#### Docker: copy file out of a container

```sh
docker ps
docker cp 3b5bed64efea:/home/nwcommitaverages/nwcommitaverages_1.0.0_all.deb "C:\Users\Rubèn\Desktop\"
```

#### Git: add username and email to global configs

```sh
git config --global user.name "numbworks"
git config --global user.email "numbworks@gmail.com"
```

#### Git: push code to a repository created afterwards

```sh
git remote add origin <url>
git push --set-upstream origin master -f
```

#### Git: set the name of the default branch

```sh
git config --global init.defaultBranch master
```

#### Github Search: specific commands inside Dockerfiles

```
ollama serve path:**/Dockerfile
```

#### Github Search: specific file names by repository language

```
language:python path:**/Makefile
```

#### Windows 10: disable Powerhell's auto-completion

```powershell
if (-not (Test-Path $PROFILE)) { $null = New-Item -Force $PROFILE }
Invoke-Item $PROFILE
Set-PSReadLineOption -PredictionSource None
```

#### Windows 10: reduce the size of Docker's VHDX file(s)

```powershell
Optimize-VHD -Path "C:\Users\Rubèn\AppData\Local\Docker\wsl\disk\docker_data.vhdx" -Mode Full
```

#### Windows 10: solve the "Failed to Attach Disk ext4.vhdx to WSL2" issue

```
# Open Windows Terminal as Administrator
wsl -l -v
wsl --unregister Ubuntu-24.04
# Click on Start > Ubuntu 24.04 LTS
# Enter new UNIX username ...
# New password ...
```

#### Windows 10: shutdown WSL

```
wsl --shutdown
net stop LxssManager
net start LxssManager 
```

#### Windows 10: remove/restore hyberfil.sys

```
# Run Terminal as Administrator
powercfg -h off
powercfg -h on
```