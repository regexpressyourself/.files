
DATE=$(date +%Y-%m-%d)    
echo $DATE

tail -f /var/tmp/zenderrors_local_$DATE.log
