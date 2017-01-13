#!/bin/sh

##Step1: define some vars
#add your var

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
if [ -z $1 ] ; then
   /home/scu/rcu_nmu_start.sh &
   echo " begin to restart nmu pid ! "
else
  pro_do rcu_nmu_start.sh
fi

#########others