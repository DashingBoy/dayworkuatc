cpu_quota=80
time_gap=3

get_cpu_info()
{
  cat /proc/stat | grep -i "^cpu[0-9]\+" | \
      awk '{used+=$2+$3+$4;unused+=$5+$6+$7+$8} \
            END{print used,unused}'
}

watch_cpu()
{
  time_point_1=`get_cpu_info`
  sleep $time_gap
  time_point_2=`get_cpu_info`
  cpu_usage=`echo $time_point_1 $time_point_2 | \
             awk '{used=$3-$1;total+=$3+$4-$1-$2; \
                   print used*100/total}'`
  echo $cpu_usage
  if [ $cpu_usage -gt $cpu_quota ]
  then
  cpu_message="The cpu usage is over $cpu_quota%"
  echo $cpu_message
  echo $cpu_usage
  return 1
  else
  cpu_message="The cpu usage is under $cpu_quota%"
  echo $cpu_message
  echo $cpu_usage
  return 0
  fi
}
watch_cpu
