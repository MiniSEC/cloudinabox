#!/bin/sh

#
########################################
# This script is used to build the
# symlinks from the default puppet
# locations to folders managed by Git
########################################
#
rm -rf /etc/puppet/manifests
ln -s /cloudinabox/manifests