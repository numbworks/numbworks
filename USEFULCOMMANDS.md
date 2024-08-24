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

#### Install RustDesk on Debian

```sh
# Download the .deb from https://rustdesk.com/download
sudo dpkg -i rustdesk-*.deb
sudo apt install -f
rustdesk
```

#### Install Dropbox on Debian

```sh
# Download the .deb from https://linux.dropboxstatic.com/packages/debian/
sudo dpkg -i dropbox-*.deb
sudo apt install -f
```