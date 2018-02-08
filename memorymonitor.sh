mem_quota=80
watch_memory()
{
  mem_total=`cat /proc/meminfo | grep MemTotal | awk '{print $2}'`
  mem_free=`cat /proc/meminfo | grep MemFree | awk '{print $2}'`
 # echo $mem_free $mem_total
  mem_usage=$((100 - $mem_free*100/$mem_total))
  if [ $mem_usage -gt $mem_quota ]
  then
  mem_message="The memory usage is $mem_usage%,mem_usage > $mem_quota%"
  echo $mem_message
  return 1
  else
  mem_message="The memory usage is $mem_usage%,mem_usage < $mem_quota%"
  echo $mem_message
  return 0
  fi
}
watch_memory
