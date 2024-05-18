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
wget -q -O /usr/local/sbin/trialbot "https://raw.githubusercontent.com/adipatixyz/main/wabot/trialbot"
chmod +x /usr/local/sbin/trialbot
wget -q -O /usr/local/sbin/addsshbot "https://raw.githubusercontent.com/adipatixyz/main/wabot/addsshbot"
chmod +x /usr/local/sbin/addsshbot
wget -q -O /usr/local/sbin/trialwsbot "https://raw.githubusercontent.com/adipatixyz/main/wabot/trialwsbot"
chmod +x /usr/local/sbin/trialwsbot
wget -q -O /usr/local/sbin/addwsbot "https://raw.githubusercontent.com/adipatixyz/main/wabot/addwsbot"
chmod +x /usr/local/sbin/addwsbot

cd /etc/ssh
wget -q -O /etc/ssh/sshd_config "https://raw.githubusercontent.com/adipatixyz/main/wabot/sshd_configbot"
chmod +x /etc/ssh/sshd_config
systemctl restart sshd
cd
rm -r adipati.sh

echo "Fitur Wabot Success! Back In 10 Seconds.. [ Port Login 6401 ]"
sleep 10
menu