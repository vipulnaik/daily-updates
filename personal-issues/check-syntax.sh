grep "\- \[ \]" *????.md | grep -vE "^1....md"
grep "\- \[\]" *.md
grep "\- \[" *.md | grep -v "\- \[x\]" | grep -v "\- \[ \]"
grep "\-\[" *.md
grep -i "berkeley bowl" *.md | grep -i -v "not ltbc" | grep -v -E "^....md|^1....md|^20...md|^21...md|^2285.md"
grep -i "trader joe" *.md | grep -i "not ltbc"
grep -i "prep" *.md | grep -i "not ltbc" | grep -v yesterday
