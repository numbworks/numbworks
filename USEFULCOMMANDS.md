## Revision History

| Date | Author | Description |
|---|---|---|
| 2024-08-12 | numbworks | Created. |

## Useful Commands

This document collects in one place all the useful commands that I (unfortunately) need to type often.

#### Disable Powerhell's auto-completion

```powershell
if (-not (Test-Path $PROFILE)) { $null = New-Item -Force $PROFILE }
Invoke-Item $PROFILE
Set-PSReadLineOption -PredictionSource None
```

#### Add username and email to Git configs

```sh
git config --global user.name "numbworks"
git config --global user.email "numbworks@gmail.com"
```

#### Install RustDesk on Debian 12

```sh
# Download the .deb from https://rustdesk.com/download
sudo dpkg -i rustdesk-*.deb
sudo apt install -f
rustdesk
```

#### Install Dropbox on Debian 12

```sh
# Download the .deb from https://linux.dropboxstatic.com/packages/debian/
sudo dpkg -i dropbox-*.deb
sudo apt install -f
```

#### Install OpenRTC2 on Debian 12

```sh
cd /home/ruben/Documents/
wget https://archive.org/download/OpenRCT2Assets/RCT.zip
unzip RCT.zip
sudo geany /etc/apt/sources.list
```
Verify that the "contrib" repositories are there. If not, add them:

```
deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
```

```sh
sudo apt update
sudo apt upgrade
sudo apt install openrct2
openrct2 set-rct2 /home/ruben/Documents/RCT/
openrct2
```