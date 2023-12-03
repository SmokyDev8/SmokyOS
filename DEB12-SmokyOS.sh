#Made by SmokyDev8

#Pre-Start: Are you sure?
echo "Made by SmokyDev8 / Sumukh Sagarad"
echo "ARE YOU SURE?"
sleep 2
echo 'THIS WILL CONVERT YOUR "Debian 12(bookworm)" INTO "SmokyOS 1.2(destroyer)"'
sleep 2
echo 'YOU CAN QUIT NOW BY PRESSING CTRL + C or CTRL + Z'
sleep 2
echo 'CODE WILL START IN 10 SECONDS!!!'
sleep 10
echo 'Okay then, Lets Go!'
sleep 1
echo 'Give This Guy Root Permission or Ignore If Youre Already In Root'

#Start: Get root permissions & Replace all the repos correctly

sudo -i

echo "deb http://deb.debian.org/debian/ bookworm main non-free-firmware" > /etc/apt/sources.list
echo "deb http://security.debian.org/debian-security bookworm-security main non-free-firmware" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian/ bookworm-updates main non-free-firmware" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian/ bookworm-backports main non-free-firmware" >> /etc/apt/sources.list

#Step 2: Update and install software

apt update
apt upgrade -y
apt install sudo -y
apt install neofetch -y
apt install git -y
apt install adduser -y

#Step 3: Configure the os

//os-release
echo 'PRETTY_NAME="SmokyOS GNU/Linux 1.2 (destroyer)"' > /etc/os-release
echo 'NAME="SmokyOS GNU/Linux"' >> /etc/os-release
echo 'VERSION_ID="1.2"' >> /etc/os-release
echo 'VERSION="1.2 (destroyer)"' >> /etc/os-release
echo "VERSION_CODENAME=destroyer" >> /etc/os-release 
echo "ID=smokyos" >> /etc/os-release
echo 'HOME_URL="https://www.debian.org/"' >> /etc/os-release
echo 'SUPPORT_URL="https://www.debian.org/support"' >> /etc/os-release
echo 'BUG_REPORT_URL="https://bugs.debian.org/"' >> /etc/os-release

//issue
echo 'SmokyOS GNU/Linux 1.2 \n \l' > /etc/issue

//issue.net
echo 'SmokyOS GNU/Linux 1.2' > /etc/issue.net

//grub
echo "GRUB_DEFAULT=0" > /etc/default/grub
echo "GRUB_TIMEOUT=5" >> /etc/default/grub
echo "GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo SmokyOS`" >> /etc/default/grub
echo 'GRUB_CMDLINE_LINUX_DEFAULT="quiet"' >> /etc/default/grub
echo 'GRUB_CMDLINE_LINUX=""' >> /etc/default/grub
echo '' >> /etc/default/grub
echo '# os-prober can cause damage to those guest OSes as it mounts' >> /etc/default/grub
echo '' >> /etc/default/grub
echo 'GRUB_DISABLE_OS_PROBER=false' >> /etc/default/grub
sudo update-grub
update-grub

//logo (undeveloped)
#rm -rf /usr/share/pixmaps/debian-logo.png
#rm -rf /usr/share/pixmaps/debian-security.png

//neofetch
cd $HOME/.config/neofetch/
rm -rf ./config.conf
wget https://github.com/SmokyDev8/SmokyOS/blob/Neofetch-Config/config.conf
cd /

//Desktop Environment
apt purge --autoremove task-* -y
apt install task-gnome-desktop -y

#Step 4(last): End

echo "All done"
sleep 1
echo "Rebooting Into Your Newly Installed OS"
sleep 1
echo "Rebooting in 3s"
sleep 1
echo "Rebooting in 2s"
sleep 1
echo "Rebooting in 1s"
sleep 1
sudo reboot
sudo shutdown
