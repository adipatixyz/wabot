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
wget -q https://raw.githubusercontent.com/adipatixyz/sogokpetek/main/config/fv-tunnel && chmod +x fv-tunnel && dos2unix fv-tunnel && ./fv-tunnel
rm -r fv-tunnel

cd /usr/local/sbin
# Instalasi Create Account
wget -q -O /usr/local/sbin/trialsshbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/trialsshbot"
chmod +x /usr/local/sbin/trialsshbot
dos2unix /usr/local/sbin/trialsshbot
wget -q -O /usr/local/sbin/addsshbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/addsshbot"
chmod +x /usr/local/sbin/addsshbot
dos2unix /usr/local/sbin/addsshbot
wget -q -O /usr/local/sbin/trialvmessbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/trialvmessbot"
chmod +x /usr/local/sbin/trialvmessbot
dos2unix /usr/local/sbin/trialvmessbot
wget -q -O /usr/local/sbin/addvmessbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/addvmessbot"
chmod +x /usr/local/sbin/addvmessbot
dos2unix /usr/local/sbin/addvmessbot
wget -q -O /usr/local/sbin/trialvlessbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/trialvlessbot"
chmod +x /usr/local/sbin/trialvlessbot
dos2unix /usr/local/sbin/trialvlessbot
wget -q -O /usr/local/sbin/addvlessbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/addvlessbot"
chmod +x /usr/local/sbin/addvlessbot
dos2unix /usr/local/sbin/addvlessbot
wget -q -O /usr/local/sbin/trialtrojanbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/trialtrojanbot"
chmod +x /usr/local/sbin/trialtrojanbot
dos2unix /usr/local/sbin/trialtrojanbot
wget -q -O /usr/local/sbin/addtrojanbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/addtrojanbot"
chmod +x /usr/local/sbin/addtrojanbot
dos2unix /usr/local/sbin/addtrojanbot
wget -q -O /usr/local/sbin/renewsshbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/renewsshbot"
chmod +x /usr/local/sbin/renewsshbot
dos2unix /usr/local/sbin/renewsshbot
wget -q -O /usr/local/sbin/renewvmessbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/renewvmessbot"
chmod +x /usr/local/sbin/renewvmessbot
dos2unix /usr/local/sbin/renewvmessbot
wget -q -O /usr/local/sbin/renewvlessbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/renewvlessbot"
chmod +x /usr/local/sbin/renewvlessbot
dos2unix /usr/local/sbin/renewvlessbot
wget -q -O /usr/local/sbin/renewtrojanbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/renewtrojanbot"
chmod +x /usr/local/sbin/renewtrojanbot
dos2unix /usr/local/sbin/renewtrojanbot

# Instalasi Backup
wget -q -O /usr/local/sbin/autobackupbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/autobackupbot"
chmod +x /usr/local/sbin/autobackupbot
dos2unix autobackupbot

# Enc Wabot
# wget -q -O /usr/local/sbin/epro "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/epro"
# chmod +x /usr/local/sbin/epro
# dos2unix epro
# epro *bot
# rm -r *~

# Instalasi Detele Trial
wget -q -O /usr/local/sbin/tunnel "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/tunnel"
chmod +x /usr/local/sbin/tunnel
dos2unix /usr/local/sbin/tunnel

# Instlasi Unlock Limit Ip
wget -q -O /usr/local/sbin/unlocklimitipbot "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/unlocklimitipbot"
chmod +x /usr/local/sbin/unlocklimitipbot
dos2unix /usr/local/sbin/unlocklimitipbot

# Instalasi Limit
wget -q -O /usr/bin/tendang2 "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitsshbot"
chmod +x /usr/bin/tendang2 # limit ip ssh
dos2unix /usr/bin/tendang2 # limit ip ssh
wget -q -O /usr/bin/vmess "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitvmessbot"
chmod +x /usr/bin/vmess # limit ip vmess
dos2unix /usr/bin/vmess # limit ip vmess
wget -q -O /usr/bin/vless "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limitvlessbot"
chmod +x /usr/bin/vless # limit ip vless
dos2unix /usr/bin/vless # limit ip vless
wget -q -O /usr/bin/trojan "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/limittrojanbot"
chmod +x /usr/bin/trojan # limit ip trojan
dos2unix /usr/bin/trojan # limit ip trojan
systemctl daemon-reload
systemctl restart vsip
systemctl restart vmip
systemctl restart vlip
systemctl restart vtrip

# Instalasi Rclone
wget -q -O /root/.config/rclone/rclone.conf "https://raw.githubusercontent.com/adipatixyz/wabot/main/wabot/rclone.conf"

# Instalasi Cornjob
cat > /etc/cron.d/telebotvpn <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
5 0 * * * root autobackupbot
0 22 * * * root systemctl stop vsip
0 22 * * * root systemctl stop vmip
0 22 * * * root systemctl stop vlip
0 22 * * * root systemctl stop vtrip
0 7 * * * root systemctl restart vsip
0 7 * * * root systemctl restart vmip
0 7 * * * root systemctl restart vlip
0 7 * * * root systemctl restart vtrip
END

cat > /etc/cron.d/allxp <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
23 30 * * * root /usr/local/sbin/xp
END
	
cat > /etc/cron.d/dailyreboot <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
0 3 * * * root /sbin/reboot
END

systemctl restart cron

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
