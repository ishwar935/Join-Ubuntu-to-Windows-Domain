#!/bin/sh
 
#sudo apt-get update   
apt-get install -y openssh-server
cd /home/itadmin/Desktop/domainjoin/
sudo dpkg -i libglade2-0_2.6.4-2_amd64.deb
cd /home/itadmin/Desktop/domainjoin/
sudo chmod +x pbis-open-9.1.0.551.linux.x86_64.deb.sh
sudo ./pbis-open-9.1.0.551.linux.x86_64.deb.sh

cd ~
/opt/pbis/bin/domainjoin-cli join bill.io
#
/opt/pbis/bin/config UserDomainPrefix bill
/opt/pbis/bin/config AssumeDefaultDomain true
/opt/pbis/bin/config LoginShellTemplate /bin/bash
/opt/pbis/bin/ad-cache --delete-all
/opt/pbis/bin/update-dns

sed -i 's/sufficient/[success=ok default=ignore]/' /etc/pam.d/common-session
#shutdown now -r

