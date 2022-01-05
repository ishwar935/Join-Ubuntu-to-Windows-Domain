#!/bin/sh
 
sudo apt-get update   
apt-get install -y openssh-server
cd /home/itadmin/Desktop/domainjoin/
sudo dpkg -i multiarch-support_2.27-3ubuntu1.4_amd64.deb
sudo dpkg -i libglade2-0_2.6.4-2_amd64.deb
sudo chmod +x pbis-open-8.5.7.385.linux.x86_64.deb.sh
sudo dpkg -i pbis-open-gui_8.5.7.385_amd64.deb

cd ~
/opt/pbis/bin/domainjoin-gui join bill.io
#
/opt/pbis/bin/config UserDomainPrefix bill
/opt/pbis/bin/config AssumeDefaultDomain true
/opt/pbis/bin/config LoginShellTemplate /bin/bash
/opt/pbis/bin/ad-cache --delete-all
/opt/pbis/bin/update-dns

sed -i 's/sufficient/[success=ok default=ignore]/' /etc/pam.d/common-session
#shutdown now -r

