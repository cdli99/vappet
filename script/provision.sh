#! /bin/bash

apt-get update
apt-get install -y puppet
# remove the warning of deprecation
sed -i '/^templatedir=/d' /etc/puppet/puppet.conf
echo "puppet path: `which puppet`"
puppet apply -l /tmp/manifest.log --modulepath=/vagrant_data/puppet/modules /vagrant_data/puppet/manifests/default.pp
#$ puppet apply -l /tmp/manifest.log manifest.pp
#$ puppet apply --modulepath=/root/dev/modules -e "include ntpd::server"
#$ puppet apply --catalog catalog.jsonexit
