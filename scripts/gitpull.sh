#!/bin/sh
cd /cloudinabox
output1=$(git pull master)
output2=$(echo $output2 | tr -d ‘ ‘)
if [ $output2 = “Alreadyup-to-date.” ];
then
  echo “OMG it’s up2date!”;
else
  echo “Reloading Puppetmaster configs.”
  service puppetmaster restart
fi