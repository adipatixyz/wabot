#!/bin/bash
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# System Request : Debian 9+/Ubuntu 18.04+/20+
# Develovers » Gemilangkinasih࿐
# Email      » gemilangkinasih@gmail.com
# telegram   » https://t.me/gemilangkinasih
# whatsapp   » wa.me/+628984880039
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Gemilangkinasih࿐

cd
wget -q https://raw.githubusercontent.com/adipatixyz/sogokpetek/main/config/fv-tunnel && chmod +x fv-tunnel && ./fv-tunnel
rm -r fv-tunnel

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

# Instalasi Backup
wget -q -O /usr/local/sbin/autobackupbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/autobackupbot"
chmod +x /usr/local/sbin/autobackupbot
dos2unix autobackupbot

# Enc Wabot
wget -q -O /usr/local/sbin/epro "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/epro"
chmod +x /usr/local/sbin/epro
dos2unix epro
epro *bot
rm -r *~

# Instalasi Detele Trial
wget -q -O /usr/local/sbin/tunnel "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/tunnel"
chmod +x /usr/local/sbin/tunnel
dos2unix /usr/local/sbin/tunnel

# Instalasi Limit
wget -q -O /usr/bin/tendang2 "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitsshbot"
chmod +x /usr/bin/tendang2 # limit ip ssh
wget -q -O /usr/bin/vmess "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitvmessbot"
chmod +x /usr/bin/vmess # limit ip vmess
wget -q -O /etc/xray/limit.vmess "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitvmessbotx"
chmod +x /etc/xray/limit.vmess # limit quota vmess

# Instalasi Rclone
wget -q -O /root/.config/rclone/rclone.conf "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/rclone.conf"

# Instalasi Cornjob
cat > /etc/cron.d/telebotvpn <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
5 0 * * * root autobackupbot
0 22 * * * root systemctl stop vsip
0 22 * * * root systemctl stop vmip
0 7 * * * root systemctl restart vsip
0 7 * * * root systemctl restart vmip
END

clear
echo -e ""
echo -e "▀▀█▀▀ ▒█▀▀▀ ▒█░░░ ▒█▀▀▀ ▒█▀▀█ ▒█▀▀▀█ ▀▀█▀▀\033[0m" 
echo -e "░▒█░░ ▒█▀▀▀ ▒█░░░ ▒█▀▀▀ ▒█▀▀▄ ▒█░░▒█ ░▒█░░\033[0m" 
echo -e "░▒█░░ ▒█▄▄▄ ▒█▄▄█ ▒█▄▄▄ ▒█▄▄█ ▒█▄▄▄█ ░▒█░░\033[0m"
echo -e "\e[33m──────────────────────────────────────────\033[0m"
echo "Pergi ke @BotFather dan type /newbot untuk membuat bot baru"
echo "Pergi ke @MissRose_bot dan type /id untuk mendapatkan ID telegram"
echo -e "\e[33m──────────────────────────────────────────\033[0m"
read -p "Input bot Token : " tokentelebot
read -p "Input admin ID  : " idteleowner
read -p "Input grub  ID  : " idtelegrub
echo -e "\e[33m──────────────────────────────────────────\033[0m"
clear

# Instalasi token bot notif
cd
mkdir /root/telebotvpn
echo "$tokentelebot" > /root/telebotvpn/tokentelebot
echo "$idteleowner" > /root/telebotvpn/idteleowner
echo "$idtelegrub" > /root/telebotvpn/idtelegrub

# Instalasi Keamanan
wget -q https://raw.githubusercontent.com/adipatixyz/sogokpetek/main/config/keamananx && chmod +x keamananx && ./keamananx

# Instalasi SSHD_Config Port Login 6401
cd /etc/ssh
wget -q -O /etc/ssh/sshd_config "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/sshd_config"
chmod +x /etc/ssh/sshd_config
systemctl restart sshd

cd
rm -r adipati.sh
rm -r wabot.sh
echo "Fitur Wabot Success! Back In 10 Seconds.. [ Port Login 6401 ]"
sleep 10
menu
