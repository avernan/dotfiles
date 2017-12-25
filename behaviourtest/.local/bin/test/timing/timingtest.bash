rep_num=10000000

echo -en "\t\033[91mTest 1\033[0m > No check\t\t......\t"

time_start=$(date +%s.%N)

for i in $(seq 1 ${rep_num}) ; do
    echo 2 &> /dev/null
done

time_end=$(date +%s.%N)
time_used_tot=$(echo $time_end - $time_start | bc -l)
time_used_av=$(echo "${time_used_tot}/${rep_num}" | bc -l)
echo -e "${time_used_tot}\t(\033[35m${time_used_av}\033[0m)"

echo -en "\t\033[91mTest 2\033[0m > Check empty variable\t......\t"

time_start=$(date +%s.%N)

for i in $(seq 1 ${rep_num}) ; do
    if [[ -n $DEBUG ]] ; then
        echo 2 &> /dev/null
    else
        echo 2 &> /dev/null
    fi
done

time_end=$(date +%s.%N)
time_used_tot=$(echo $time_end - $time_start | bc -l)
time_used_av=$(echo "${time_used_tot}/${rep_num}" | bc -l)
echo -e "${time_used_tot}\t(\033[35m${time_used_av}\033[0m)"

echo -en "\t\033[91mTest 3\033[0m > Check empty variable\t......\t"

DEBUG=1

time_start=$(date +%s.%N)

for i in $(seq 1 ${rep_num}) ; do
    if [[ -n DEBUG ]] ; then
        echo 2 &> /dev/null
    else
        echo 2 &> /dev/null
    fi
done

time_end=$(date +%s.%N)
time_used_tot=$(echo $time_end - $time_start | bc -l)
time_used_av=$(echo "${time_used_tot}/${rep_num}" | bc -l)
echo -e "${time_used_tot}\t(\033[35m${time_used_av}\033[0m)"
