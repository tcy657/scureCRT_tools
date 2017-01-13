#!/bin/bash

if [ -z $1 ] ; then
  echo " bbbbbbbbbbbbbbbbbbbbbbbbbbb "
  echo " bakeup system file! " 
  
  cd /home
  
  echo "  b0 -- mkdir"
  mkdir bakeup
  
  echo "  b1 -- sys"
  tar -zcvf sys.tgz /home/sys/netConfig.sh
  
  echo "  b2 -- scu"
  tar -zcvf scu.tgz scu
  
  echo "  b3 -- nmu"
  tar -zcvf nmu.tgz nmu

#  echo "  b4 -- eos"
#  tar -zcvf eos.tgz eos
  
  echo "  b5 -- copy to /home/bakeup "
  mv sys.tgz bakeup
  mv nmu.tgz bakeup
  mv scu.tgz bakeup
#  mv eos.tgz bakeup
  
  echo "  bakeup -- end"

else
  echo " recover system file! " 
  echo " rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr "

  cd /home

  echo "  r1 -- sys"
  cp /home/sys/netConfig.sh  /home/sys/netConfig.sh_bk
  tar -zxvf sys.tgz  -C /
#  tar -zxvf sys.tgz  -C /home/sys

  echo "  r2 -- scu"
  tar -zxvf scu.tgz 
#  tar -zxvf scu.tgz -C /home

  echo "  r3 -- nmu"
  tar -zxvf nmu.tgz 
#  tar -zxvf nmu.tgz -C /home

  echo "  r4 -- eos"
#  tar -zxvf eos.tgz 
#  tar -zxvf eos.tgz -C /home

####copy lib files from /home to /lib
#  cd /home/scu
  chmod 755 lib*
  cp lib* /lib  
  
  echo  "  recover -- end"
  
fi