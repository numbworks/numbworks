## Revision History

| Date | Author | Description |
|---|---|---|
| 2024-08-12 | numbworks | Created. |

## Useful Commands

This document collects in one place all the useful commands that I (unfortunately) need to type often.

#### Debian 12: install RustDesk

```sh
# Download the .deb from https://rustdesk.com/download
sudo dpkg -i rustdesk-*.deb
sudo apt install -f
rustdesk
```

#### Debian 12: install Dropbox

```sh
# Download the .deb from https://linux.dropboxstatic.com/packages/debian/
sudo dpkg -i dropbox-*.deb
sudo apt install -f
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

```
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