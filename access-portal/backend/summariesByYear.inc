<?php

$yearSummariesQuery = "select * from year_summaries order by year desc;";
$yearSummariesResult = $mysqli -> query($yearSummariesQuery);
print '<h4 id="summariesByYear">Summaries by year ('.$yearSummariesResult -> num_rows.' rows)</h4>';
print "\n";
print '<table id="myTableSummariesByYear" class="tablesorter">'."\n";
print "<thead>\n";
print "<tr><th>Year</th><th>Notes</th></tr></thead>\n<tbody>\n";
for ($i = 0; $i < $yearSummariesResult -> num_rows; $i++) {
  $row = $yearSummariesResult -> fetch_assoc();
  print '<tr id="year-'.$row['year'].'">';
  print "<td>".$row['year']."</td>";
  print "<td>".$row['notes']."</td>";
  print "</tr>\n";
}
print "</tbody>\n</table>\n";
