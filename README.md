# solr-doc-index-poc

1. Clone the repo to your box
1. Navigate to the directory
1. Start the vagrant box `$vagrant up`.
1. Once vagrant has finished starting, ssh to the box `$ssh vagrant@192.168.50.203` use vagrant as the password when prompted.
1. Run the server prep script `$sudo bash /sv/scripts/prepServer.sh`.
1. Exit the server  `$exit`.
1. Stop the vagrant box `$vagrant halt`.
1. Start the vagrant box `$vagrant up`.
1. Once vagrant has finished starting, ssh to the box `$ssh vagrant@192.168.50.203` use vagrant as the password when prompted.
1. Run the server setup script `$sudo bash /sv/scripts/setupServer.sh`.
1. Access SOLR UI via the browser at [http://192.168.50.203:8983/solr/#/docIndex/query](http://192.168.50.203:8983/solr/#/docIndex/query)
