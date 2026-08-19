start=${1:-1}
end=${2:-2403}
grace=3
echo "downloading issues $start to $end after $grace seconds"
sleep $grace
for i in $(seq $start $end)
do
        gh issue view $i > $i.md
        echo "downloaded issue $i"
done
