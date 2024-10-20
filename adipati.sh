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
wget -q -O /usr/local/sbin/trialsshbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/trialsshbot"
chmod +x /usr/local/sbin/trialsshbot
wget -q -O /usr/local/sbin/addsshbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/addsshbot"
chmod +x /usr/local/sbin/addsshbot
wget -q -O /usr/local/sbin/trialvmessbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/trialvmessbot"
chmod +x /usr/local/sbin/trialvmessbot
wget -q -O /usr/local/sbin/addvmessbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/addvmessbot"
chmod +x /usr/local/sbin/addvmessbot

# Instalasi Detele Trial
wget -q -O /usr/local/sbin/tunnel "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/tunnel"
chmod +x /usr/local/sbin/tunnel

# Instalasi Limit
wget -q -O /usr/bin/tendang2 "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitsshbot"
chmod +x /usr/bin/tendang2 # limit ip ssh
wget -q -O /usr/bin/vmess "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitvmessbot"
chmod +x /usr/bin/vmess # limit ip vmess
wget -q -O /etc/xray/limit.vmess "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitvmessbotx"
chmod +x /etc/xray/limit.vmess # limit quota vmess

# Instalasi Backup
wget -q -O /usr/local/sbin/autobackupbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/autobackupbot"
chmod +x /usr/local/sbin/autobackupbot
dos2unix autobackupbot

# Instalasi Cornjob
echo "5 0 * * * root autobackupbot" >> /etc/crontab # autobackup bot
echo "0 22 * * * root systemctl stop vsip" >> /etc/crontab # stop limit ip ssh jam 22
echo "0 22 * * * root systemctl stop vmip" >> /etc/crontab # stop limit ip vmess jam 22
echo "0 7 * * * root systemctl restart vsip" >> /etc/crontab # restart limit ip ssh jam 7
echo "0 7 * * * root systemctl restart vmip" >> /etc/crontab # restart limit ip vmess jam 7
systemctl restart cron

# Enc Wabot
wget -q -O /usr/local/sbin/epro "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/epro"
chmod +x /usr/local/sbin/epro
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
