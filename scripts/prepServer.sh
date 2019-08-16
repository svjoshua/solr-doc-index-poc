#!/bin/bash
if [ `whoami` != "root" ]; then
	echo "Script must be executed as root"
	exit 1
fi
TITLE='[35m'
INPUT='[32m'
RESET='[0m'

echo -e "\e${TITLE} -=Configure Security=- \e${RESET}"
echo -e "\e${TITLE} --Updating \e${RESET}"
cp /sv/limits.conf /etc/security/limits.conf
echo -e "\e${TITLE} -=Security Config Complete=- \e${RESET}"
