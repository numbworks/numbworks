# Debian Preseed
Contact: numbworks@gmail.com

## Revision History

| Date | Author | Description |
|---|---|---|
| 2025-08-09 | numbworks | Created. |
| 2025-08-12 | numbworks | Last update. |

## Overview

This documents collects all the required information to perform a **successful and fully automated installation of Debian 13** using the preseeding technique. 

The process requires the user to:

- Flash the Debian ISO image to a pendrive
- Copy two `preseed.*` files to the root directory of the pendrive
- Boot the target laptop from the pendrive
- Write the preseed boot flag and launch the installer
- Select the Ethernet card
- Wait for the preseed files to do their magic with no additional user intervention
- Login into your brand-new Debian environment

These `preseed.*` files should most likely work for Debian 12 as well, but I didn't test it. 

## Outcome

**Configurations:**

| File | Configuration |
|---|---|
| `preseed.cfg` | Username and password for standard user |
| `preseed.cfg` | Password for root user |
| `preseed.cfg` | Hostname |
| `preseed.cfg` | Language (EN) |
| `preseed.cfg` | Main keyboard layout (SE) |
| `preseed.cfg` | Timezone (Europe/Stockholm) |
| `preseed.sh` | Additional keyboard layout (IT) |
| `preseed.sh` | Username and password for wifi connection |

**Installed software:**

| File | Software |
|---|---|
| `preseed.cfg` | cinnamon-core, gdm3, thunar |
| `preseed.cfg` | lxterminal, fastfetch |
| `preseed.cfg` | docker, geany, libreoffice|
| `preseed.cfg` | firefox-esr, chromium |
| `preseed.sh` | ollama, brave, dbeaver, rustdesk, dropbox |
| `preseed.sh` | code, microsoft-edge-stable |

## Requirements

1. A working computer
    - Running Windows in my case, but also Linux/Mac are valid options.
2. A target computer
    - We'll wipe the whole hard drive, therefore backup your data before proceeding.
    - Must have an Ethernet port.
    - Must have out-of-the-box support for Linux - i.e. Lenovo Thinkpads, Dell, etc.
3. An Ethernet cable
    - The support for wifi preseeding in Debian installer is wonky.
    - Ethernet connection will be needed for this procedure.
4. A pendrive of adequate size.
5. The ISO image of a Debian installer
    - [Download page for Debian 13](https://www.debian.org/releases/trixie/debian-installer/)
    - The following images will both work fine:
        - `debian-13.0.0-amd64-netinst.iso` (754 MB)
        - `debian-13.0.0-amd64-DVD-1.iso` (3.71 GB)
        - Using the DVD version will reduce the package downloading operations.
6. A software to flash ISO images to bootable pendrives
    - I used [Rufus 4.7p (4.7.2231)](https://rufus.ie/en/) but whatever alternative will do.
7. A text editor that supports Unix line endings - i.e. Notepad++.
8. The two attached `preseed.*` files:
    - [preseed.cfg](Preseed/preseed.cfg)
    - [preseed.sh](Preseed/preseed.sh)
    - Edit the placeholder values for your needs.

## Getting Started

**On the working computer**:

1. Plug a pendrive in the USB port;
2. Download the chosen ISO image of a Debian installer;
3. Download Rufus and install/lauch it;
4. In Rufus, select the ISO image, select the pendrive and click on `START`;
5. Once flashing is completed, copy the two `preseed.*` files to the root folder of the pendrive;
6. Open `preseed.sh` from the pendrive with your text editor of choice;
7. Convert line endings to Unix and save the file:
    - If `preseed.sh` has Windows line endings, the execution of `late_command` will fail.
    - With Notepad++, you can use `Edit` -> `EOL Conversion` -> `Unix`.
8. Eject the pendrive and unplug it;
9. Done!

**On the target computer**:

1. Plug the pendrive and connect the computer to internet via Ethernet cable;
2. Switch on the computer;
3. Boot from the pendrive;
4. Once Debian installer is started, click on `Help` -> `F3`;
5. After the `boot:` prompt, write `auto file=/cdrom/preseed.cfg` and press "Enter";
6. The installer will load some basic packages to memory and then ask to select the network interface - select Ethernet;
7. The installer will take some seconds to connect to the network;
8. Preseeding process will start;
9. Once completed, remove the pendrive and reboot!
10. Done!

## The Late Command

To avoid that the installer stops for a trivial error in `preseed.sh`, the `late_command` statement ends with `|| true`, so that whatever exit code is returned from the script, the statement returns success anyway. 

Once installation is completed, to check if `late_command` successfully executed `preseed.sh`:

1. Login into the target computer;
2. Open a terminal and type: `sudo nano /root/preseed.log`
3. Done!

A `preseed.sh` script is used because `late_command` supports only one command. The preseed syntax will allow you to define multiple commands, but only the latest will be executed.

## The Wifi Credentials

If, once you login in the target computer, Debian doesn't automatically connect via wireless, please:

1. Open a terminal and type: `cat /etc/wpa_supplicant/wpa_supplicant.conf`;
2. Copy the password;
3. Connect to the wireless network via Network Manager and paste the password;
4. Done!

## Preseeding via Wireless instead of via Ethernet

In theory, it should be possible to use the wireless connection for the preseeding process by adding a block like the following one to `preseed.cfg`:

```
### Network (Wi-Fi) ###
d-i netcfg/wireless_show_essids select manual
d-i netcfg/wireless_essid string YOUR_SSID
d-i netcfg/wireless_essid_again string YOUR_SSID
d-i netcfg/wireless_security_type select wpa
d-i netcfg/wireless_wpa string YOUR_PASSWORD
```

In reality and according to many online sources, this support is quite wonky. Despite having a fully-supported wireless card, the wireless preseeding didn't work for me as well.
