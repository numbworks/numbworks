#!/bin/sh

LOGFILE="/root/preseed.log"
exec >"$LOGFILE" 2>&1

echo "[INFO] preseed.sh started at $(date)"

# 01 Add Keyboard Layout
{
    sed -i 's/^XKBLAYOUT=.*/XKBLAYOUT="se,it"/' /etc/default/keyboard
    echo "[OK] Keyboard layout updated"
} || {
    echo "[ERROR] Failed to update keyboard layout"
}

# 02 Add Wi-Fi Configuration
{
    cat <<EOF >> /etc/wpa_supplicant/wpa_supplicant.conf
network={
    ssid="YOUR_SSID"
    psk="YOUR_PASSWORD"
}
EOF
    echo "[OK] Wi-Fi configuration added"
} || {
    echo "[ERROR] Failed to update Wi-Fi configuration"
}

# 03 Disable CD-ROM repository
{
    if [ -f /etc/apt/sources.list ]; then
        sed -i 's|^deb cdrom:|# deb cdrom:|' /etc/apt/sources.list
    fi
    echo "[OK] Disabled CD-ROM repository"
} || { echo "[ERROR] Failed to disable CD-ROM repository"; }

# 04 Install Pre-Requisites
{
    apt-get update
    apt-get install -y --no-install-recommends curl ca-certificates gnupg
    update-ca-certificates || true
    echo "[OK] Installed prerequisites: curl, ca-certificates, gnupg"
} || {
    echo "[ERROR] Failed to install prerequisites"
}

# 05 Install Ollama
{
    curl -fsSL https://ollama.com/install.sh | sh
    echo "[OK] Installed Ollama"
} || {
    echo "[ERROR] Failed to install Ollama"
}

# 06 Install Brave
{
    curl -fsS https://dl.brave.com/install.sh | sh
    echo "[OK] Installed Brave"
} || {
    echo "[ERROR] Failed to install Brave"
}

# 07 Install DBeaver
{
    curl -fsSL -o /tmp/dbeaver.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
    apt install -y /tmp/dbeaver.deb
    rm -f /tmp/dbeaver.deb
    echo "[OK] Installed DBeaver"
} || {
    echo "[ERROR] Failed to install DBeaver"
}

# 08 Install RustDesk
{
    curl -fsSL -o /tmp/rustdesk.deb https://github.com/rustdesk/rustdesk/releases/download/1.4.1/rustdesk-1.4.1-x86_64.deb
    apt install -y /tmp/rustdesk.deb
    rm -f /tmp/rustdesk.deb
    echo "[OK] Installed RustDesk"
} || {
    echo "[ERROR] Failed to install RustDesk"
}

# 09 Install Dropbox
{
    curl -fsSL -o /tmp/dropbox.deb 'https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2025.05.20_amd64.deb'
    apt install -y /tmp/dropbox.deb
    rm -f /tmp/dropbox.deb
    echo "[OK] Installed Dropbox"
} || {
    echo "[ERROR] Failed to install Dropbox"
}

# 10 Install VSCode
{
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    install -o root -g root -m 644 microsoft.gpg /etc/apt/keyrings/microsoft-archive-keyring.gpg
    echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list
    apt-get update
    apt-get install -y code
    echo "[OK] Installed VSCode"
} || {
    echo "[ERROR] Failed to install VSCode"
}

# 11 Install Microsoft Edge
{
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-beta.list
    apt-get update
    apt-get install -y microsoft-edge-stable
    echo "[OK] Installed Microsoft Edge"
} || {
    echo "[ERROR] Failed to install Microsoft Edge"
}

# 12 Remove /root/preseed.sh
{
    rm -- "$0"
    echo "[OK] Removed preseed.sh"
} || {
    echo "[ERROR] Failed to remove preseed.sh"
}

echo "[INFO] preseed.sh finished at $(date)"