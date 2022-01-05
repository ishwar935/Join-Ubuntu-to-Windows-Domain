#!/bin/sh
cd ~
/opt/pbis/bin/domainjoin-cli join jasperindia.local ishwar.chand@jasperindia.local 
#
/opt/pbis/bin/config UserDomainPrefix jasperindia
/opt/pbis/bin/config AssumeDefaultDomain true
/opt/pbis/bin/config LoginShellTemplate /bin/bash
/opt/pbis/bin/ad-cache --delete-all
/opt/pbis/bin/update-dns

sed -i 's/sufficient/[success=ok default=ignore]/' /etc/pam.d/common-session
#shutdown now -r

