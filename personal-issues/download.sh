MAX=`gh issue list --state all --limit 1 --json number --jq '.[0].number'`
END=${2:-$MAX}
START=${1:-`bc -l <<< "$END - 30"`}
GRACE_PERIOD=3
# we expect 1 <= $START <= $END <= $MAX
if (( $(bc -l <<< "$START < 1") )); then
    echo "Quitting as starting issue number $START is less than 1"
    exit
elif (( $(bc -l <<< "$START > $END") )); then
    echo "Quitting as starting issue number $START is greater than ending issue number $END"
    exit
elif (( $(bc -l <<< "$END > $MAX") )); then
    echo "Quitting as ending issue number $END is greater than maximum available issue number $MAX"
    exit
fi
echo "Downloading issues $START to $END after $GRACE_PERIOD seconds"
sleep $GRACE_PERIOD
for i in $(seq $START $END)
do
        gh issue view $i > $i.md
        echo "Downloaded issue $i"
done
