for i in $(seq ${1:-1} ${2:-2364}) # Change range to cover whatever additional issues need downloading
do
        gh issue view $i > $i.md
        echo "downloaded issue $i"
done
