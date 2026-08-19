max=`gh issue list --state all --limit 1 --json number --jq '.[0].number'`
end=${2:-$max}
start=${1:-`bc -l <<< "$end - 30"`}
grace=3
# we expect 1 <= $start <= $end <= $max
if (( $(bc -l <<< "$start < 1") )); then
    echo "quitting as start $start is less than 1"
    exit
elif (( $(bc -l <<< "$start > $end") )); then
    echo "quitting as start $start is greater than end $end"
    exit
elif (( $(bc -l <<< "$end > $max") )); then
    echo "quitting as end $end is greater than max $max"
    exit
fi
echo "downloading issues $start to $end after $grace seconds"
sleep $grace
for i in $(seq $start $end)
do
        gh issue view $i > $i.md
        echo "downloaded issue $i"
done
