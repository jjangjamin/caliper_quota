sudo perf stat -e cache-misses,context-switches,\
cpu-migrations,page-faults,instructions -o stat_100.txt -a sleep 5 &
sudo perf sched record -- sleep 5 &
mpstat 5 1 >> mpstat_100.txt &
pidstat 5 1 >> pidstat_100.txt

