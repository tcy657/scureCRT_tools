#!/bin/bash

# make sure nmu_moniter and nmu_r845 is available.

##Step1: define some vars
#add your var
pid_moni=0
pid_NMU=0

##Step2: functions
pro_do()
{
  #kill PID
  echo "**** Running result ****"
  for var_list in $* ; do
    ps -ef |grep ${var_list} | grep -v grep | awk '{print $2}' |if read pid
      then
        ##normal state: debug_flag is none
        kill -9 $pid

        #feedback
        ps -ef |grep ${var_list} | grep -v grep | awk '{print $2}' |if read pid ; then
          echo "Error2: The ${var_list} is running, and needs your check ! "  
        else
          echo "OK: The ${var_list} is killed ! "     
        fi
        
        ##debug state: debug_flag is defined
        #add your code
      else
        echo "Error1: The ${var_list} doesn't runnint, needs your check ! "
    fi
  done
  echo "*******  end  **********"
}
  
##Step3: The main program  
# S3.1 kill nmu_moniter & NMU
 pro_do nmu_moniter NMU

# S3.2 restart nmuEntry.sh
 cd /home/nmu
 ./nmuEntry.sh
 sleep 10

# S3.3 check NMU pid 
while true
do
 pid_NMU=`ps -ef |grep NMU | grep -v grep | awk '{print $2}'`

 # NMU process doesn't run.
 if [ -z ${pid_NMU} ] ; then
  sleep 10  
  pid_moni=`ps -ef |grep nmu_moniter | grep -v grep | awk '{print $2}'`

   # nmu_moniter process doesn't run.
   if [ -z ${pid_moni} ] ; then
    cd /home/nmu
    ./nmu_moniter
    sleep 5
   else
    sleep 5 
   fi
 fi
  
done