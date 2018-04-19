echo "Before reload:"
ps -ef | grep nginx | grep -v grep
kill -1 `cat logs/nginx.pid 2> /dev/null` 2>/dev/null
sleep 0.3
echo "After reload:"
ps -ef | grep nginx | grep -v grep
