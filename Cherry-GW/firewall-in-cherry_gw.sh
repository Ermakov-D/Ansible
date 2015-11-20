#!/bin/sh

ip_address=`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'`
#`hostname -I`

if [ "$ip_address" = "192.168.15.51" ]
then
  # remote_md5=`ssh depeche@cherry-gw "md5sum /var/lib/firewall" | awk '{print $1}'`
  # local_md5=`md5sum /srv/ansible-files/cherry-gw/firewall/firewall | awk '{print $1}'`


  # echo "remote: $remote_md5"
  # echo " local: ${local_md5}"

  #  if [ "$remote_md5" != "$local_md5" ]
  #  then
  #  fi
    cd /home/depeche/Ansible/Cherry-GW
    /usr/bin/ansible-playbook cherry-gw.yml


fi
