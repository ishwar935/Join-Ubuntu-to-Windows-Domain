#Join any Ubuntu Version to windows Domain
# go to usr/share/lightdm/lightdm.conf.d and edit  50-ubunut.conf file add below lines to this file
#    allow-guest=false
#    greeter-show-manual-login=true


#clone thisRepo to any location on your ubuntu system
#edit Djoin.sh and change location for packages and domain name  bill and bill.io
#give execute permission to djoin. sh via sudo djoin.sh
# then run djoin.sh script ./Djoin
# ater installation you have to provide username and password for domain join.
# restart the system
# add user to root group via command
# usermod -a G sudo test.admin # domain user name 


