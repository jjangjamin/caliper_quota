sysbench --test=cpu --cpu-max-prime=100000 --num-threads=8 --max-time=180 run &
PID=`pgrep sysbench`
echo $PID >> /sys/fs/cgroup/cpu/sysbench/tasks
cat /sys/fs/cgroup/cpu/sysbench/tasks
