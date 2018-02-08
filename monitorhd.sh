hd_quota=80
watch_hd()
{
  hd_usage=`df | grep /dev/sda1 | awk '{print $5}' | sed 's/%//g'`
  if [ $hd_usage -gt $hd_quota ]
  then
  hd_message="The hard disk usage is $hd_usage%"
  echo $hd_message
  return 1
  else
  hd_message="The hard disk usage is $hd_usage%"
  echo $hd_message
  return 0
  fi
}
watch_hd
