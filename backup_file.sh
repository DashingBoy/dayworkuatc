#!/bin/bash

file_max_size=5
log_ran_dir=~/daywork
working_dir=~/daywork/dayworkuatc
alarmrate=500
SLEEPTIME=5  #5seconds


filenameCovet(){
  timestamp=$(date + %Y%m%d%H%M%S)
  #timestamp=`echo $timestamp`
  RETVAL=$1.$timestamp
}

searchdir(){
  oldestlog=`ls -rt | head -n1 | awk '{ptint $1}'`
}

clear_old_log_under_working_dir(){
  cd $working_dir
  while true;
  do
    logsize=`du -ms $working_dir | awk '{print $1}'`
    if [ $logsize -gt $alarmrate ]
    then
      searchdir
      rm -rf $oldestlog
    else
      break;
    fi
  done
}

backuplog_process()
{

  cd $log_ram_dir
  for i in *
  do

    file_size=`du -m $i | awk '{print $1}'`
    case $i in
      access.log | error.log |apcupsd.events |\
      messages | soho.log |\
      mail.err)

      if [ ! -d $working_dir ]
      then
        mkdir -p $working_dir
      fi
      if [ file_size -gt file_max_size ]
      then
        filenameConvert $i 
        cp $log_ram_dir/$i $working_dir/$RETVAL
        echo "" > $log_ram_dir/$i
        clear_old_log_under_working_dir
      
      fi
      ;;   
    *)     

      if [ file_size -gt file_max_size ]
      then
        echo "" > $log_ram_dir/$i
      fi
      ;;
    esac
  done
}
#backuplog_process

while true;
do 
  backuplog_process
  sleep $SLEEPTIME
done
