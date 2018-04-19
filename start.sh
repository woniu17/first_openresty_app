kill `cat logs/nginx.pid 2> /dev/null` 2>/dev/null
sleep 0.3
/usr/local/openresty/nginx/sbin/nginx -p `pwd` -c conf/nginx.conf
sleep 0.3
ps -ef | grep nginx | grep -v grep
