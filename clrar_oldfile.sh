#!/bin/bash
searchdir(){
  oldestlog=`ls -rt | head -n1 | awk '{ print $1 }'`
}

working_dir=/home/qqq/testc/shell
alarmrate=500

clear_old_log_under_working_dir(){
  cd $working_dir
  while true;
  do
    logsize=`du -ms $working_dir | awk '{ print $1 }'`
    if [ $logsize -gt $alarmrate ];
    then
      searchdir
      rm -rf $oldestlog
      # echo remove success!
    else
      break;
     # print no rm file!
    fi
  done     
}
