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

# Instalasi Limit
wget -q -O /usr/local/sbin/limitsshbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitsshbot"
chmod +x /usr/local/sbin/limitsshbot # limit ip ssh
wget -q -O /usr/local/sbin/limitvmessbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitvmessbot"
chmod +x /usr/local/sbin/limitvmessbot # limit ip vmess
wget -q -O /usr/local/sbin/limitvmessbotx "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitvmessbotx"
chmod +x /usr/local/sbin/limitvmessbotx # limit quota vmess

# Instalasi Backup
wget -q -O /usr/local/sbin/autobackupbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/autobackupbot"
chmod +x /usr/local/sbin/autobackupbot
dos2unix autobackupbot

# Instalasi Cornjob
echo "5 0 * * * /usr/local/sbin/autobackupbot" >> /etc/crontab # autobackup bot
echo "*/30 * * * * /usr/local/sbin/limitsshbot" >> /etc/crontab # limit ip ssh
echo "*/30 * * * * /usr/local/sbin/limitvmessbot" >> /etc/crontab # limit ip vmess
echo "*/30 * * * * /usr/local/sbin/limitvmessbotx" >> /etc/crontab # limit quota vmess
echo "*/30 * * * * /usr/local/sbin/limitvmessbotx" >> /etc/crontab # limit quota vmess
echo "*/30 * * * * /usr/local/sbin/unlockssh" >> /etc/crontab # unlock akun xray
echo "*/30 * * * * /usr/local/sbin/unlockxray" >> /etc/crontab # unlock akun xray

# Enc Wabot
wget -q -O /usr/local/sbin/epro "https://raw.githubusercontent.com/adipatixyz/sogokpetek/main/encrypt/epro"
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
