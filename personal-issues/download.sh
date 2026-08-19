end=${2:-`gh issue list --state all --limit 1 --json number --jq '.[0].number'`}
start=${1:-`bc -l <<< "$end - 21"`}
grace=3
echo "downloading issues $start to $end after $grace seconds"
sleep $grace
for i in $(seq $start $end)
do
        gh issue view $i > $i.md
        echo "downloaded issue $i"
done
