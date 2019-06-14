#!/bin/bash
if [ `whoami` != "root" ]; then
	echo "Script must be executed as root"
	exit 1
fi
TITLE='[35m'
INPUT='[32m'
NOTICE='[33m'
RESET='[0m'

echo -e "\e${TITLE} -=Setup SOLR Demo=- \e${RESET}"
echo -e "\e${TITLE} --Updating Ubuntu \e${RESET}"
apt-get update

echo -e "\e${TITLE} --Downloading SOLR \e${RESET}"
mkdir /solr
wget -nd http://apache.mirrors.tds.net/lucene/solr/8.1.1/solr-8.1.1.tgz -P /solr
echo -e "\e${TITLE} --Unpacking SOLR \e${RESET}"
tar -zxvf /solr/solr-8.1.1.tgz

echo -e "\e${TITLE} --Installing Java \e${RESET}"
apt-get install default-jdk -y

echo -e "\e${TITLE} --Starting SOLR \e${RESET}"
/solr/solr-8.1.1/bin/solr start -e cloud -noprompt -force
echo -e "\e${TITLE} --Building Collection \e${RESET}"
/solr/solr-8.1.1/bin/solr create -c docIndex -s 2 -rf 2
echo -e "\e${TITLE} --Indexing Documents \e${RESET}"
/solr/solr-8.1.1/bin/post -c docIndex /sv/docs

echo -e "\e${TITLE} -=End Setup=- \e${RESET}"

echo -e "\e${NOTICE} Access SOLR UI via the browser at http://192.168.50.203:8983/solr/#/docIndex/query \e${RESET}"
