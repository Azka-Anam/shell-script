#!/bin/bash
echo "-----------------------------------------------------"
echo "system health report - $ 07-10-25"
echo "-----------------------------------------------------"


#cpu load
echo "CPU Load:"
uptime | awk -F'load average:' '{print $2 }'

#MEMORU Usage
echo "memory usage:"
free 0h |grep mem |awk '{print "used: "$3" /total: "$2}'

#disk usage
echo ""
echo "disk usage:"
df -h |grep '^/dev/' |awk '{print $1" :"$5" used"}'

#LOGGED In users
echo ""
echo "loged in users:"
who |awk '{print $1 }' |sort |uniq

#system uptime 
echo ""
echo "system uptime :"
uptime -p

echo "-----------------------------------------------"
echo "health check completed!"
