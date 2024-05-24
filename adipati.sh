#!/bin/bash
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# System Request : Debian 9+/Ubuntu 18.04+/20+
# Develovers » Gemilangkinasih࿐
# Email      » gemilangkinasih@gmail.com
# telegram   » https://t.me/gemilangkinasih
# whatsapp   » wa.me/+628984880039
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Gemilangkinasih࿐

cd /usr/local/sbin
# Instalasi Create Account
wget -q -O /usr/local/sbin/trialbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/trialbot"
chmod +x /usr/local/sbin/trialbot
wget -q -O /usr/local/sbin/addsshbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/addsshbot"
chmod +x /usr/local/sbin/addsshbot
wget -q -O /usr/local/sbin/trialwsbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/trialwsbot"
chmod +x /usr/local/sbin/trialwsbot
wget -q -O /usr/local/sbin/addwsbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/addwsbot"
chmod +x /usr/local/sbin/addwsbot
# Instalasi Backup
wget -q -O /usr/local/sbin/backupbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/backupbot"
chmod +x /usr/local/sbin/backupbot
# Enc Wabot
epro *bot
rm -r *~
# Instalasi SSHD_Config Port Login 6401
cd /etc/ssh
wget -q -O /etc/ssh/sshd_config "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/sshd_config"
chmod +x /etc/ssh/sshd_config
systemctl restart sshd
cd
rm -r adipati.sh
echo "Fitur Wabot Success! Back In 10 Seconds.. [ Port Login 6401 ]"
sleep 10
menu
