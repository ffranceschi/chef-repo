#!/bin/bash
IPADDRESS=`curl http://169.254.169.254/latest/meta-data/public-hostname`

echo "Updating Chef Server URL"
sed -i "s/localhost/$IPADDRESS/g" ~/.chef/knife.rb
echo "DONE"
echo "Uploading Cookbooks to Chef Server ...."
knife cookbook upload  -a -o cookbooks
echo "DONE"
knife role from file roles/*.rb
knife environment from file environments/*.rb
echo "DONE"


echo "ALL DONE"

exit 0


