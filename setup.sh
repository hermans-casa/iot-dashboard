#!/bin/bash
#
#
# Basic setup script to prep folder for use

if [ $USER != "root" ]
then
	echo "use sudo! exiting now"
	exit
fi

apt install -y apache2-utils

mkdir grafana_data
chown 472:472 grafana_data
mkdir node_red_data
chown 1000:1000 node_red_data

read -p "Geef een user in voor toegang tot het node-red dashboard: " user
htpasswd -c passwd $user
