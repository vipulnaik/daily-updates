for i in {1..1961} # Change range to cover whatever additional issues need downloading
do
        gh issue view $i > $i.md
        echo "downloaded issue $i"
done
