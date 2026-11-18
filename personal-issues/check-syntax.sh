grep "\- \[ \]" *????.md | grep -vE "^1....md"
grep "\- \[\]" *.md
grep "\- \[" *.md | grep -v "\- \[x\]" | grep -v "\- \[ \]"
grep "\-\[" *.md
grep -i "berkeley bowl" *.md | grep -i -v "not ltbc" | grep -v -E "^....md|^1....md|^20...md|^21...md|^2285.md"
grep -i "trader joe" *.md | grep -i "not ltbc"
grep -i "prep" *.md | grep -i "not ltbc" | grep -v yesterday
grep -i "laundry" *.md | grep -i "not ltbc" | grep -v -E "days ago|yesterday|sday|nday|iday" | grep -v -i "failed attempt" | grep -v -E "^2217.md|^2381.md"
grep -i "laundry" *.md | grep -i "failed attempt" | grep -v -E "NOT LTBC|including" | grep -v -E "^1....md|^20...md"
