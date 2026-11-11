grep "\- \[ \]" *????.md | grep -vE "^1....md"
grep "\- \[\]" *.md
grep "\- \[" *.md | grep -v "\- \[x\]" | grep -v "\- \[ \]"
grep "\-\[" *.md
