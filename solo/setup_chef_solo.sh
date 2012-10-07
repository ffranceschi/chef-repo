#This script install and configures chef solo with initcron repository. This does the following, 
#  1. Install Chef Solo/Chef Client
#  2. Install  git 
#  3. Create directory structure required by chef solo
#  4. Checks out Initcron git repository
#  5. Copies over chefcookbooks, roles, databags to appropriate location
#
#What to do after running this script? 
#  1. Go to /etc/chef  e.g. cd /etc/chef
#  2. Edit node.json, and configure runlist 
#  3. Run "sudo chef-solo"
#
#
#!/bin/bash 

echo "I: Installing Chef Solo/Chef Client.."
sudo true && curl -L http://opscode.com/chef/install.sh | sudo bash
echo "I: Installing git"
sudo apt-get install git  -yq
echo "I: Creating Directory Structure Required by Chef Solo..."
sudo mkdir  /opt/initcron
sudo mkdir /etc/chef
sudo mkdir /var/chef-solo
sudo mkdir /var/chef-solo/cookbooks
sudo mkdir /var/chef-solo/roles
sudo mkdir /var/chef-solo/data_bags
echo "I: Fetchign Initcron's Chef Repository"
cd /opt/initcron
git clone git://github.com/initcron/chef-repo.git
sudo cp -r etc/chef/* /etc/chef/*   
sudo cp -r ../cookbooks/* /var/chef-solo/cookbooks/
sudo cp -r ../data_bags/* /var/chef-solo/data_bags/
sudo cp -r ../roles/* /var/chef-solo/roles
echo "I: DONE"
echo "Now edit /etc/chef/node.json, add your runlist, and run chef-solo..."
echo "Go get that chilled beer while chef does the magic.."
exit 0
