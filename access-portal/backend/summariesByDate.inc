<?php

print '<h4 id="summariesByDate">Summaries by date</h4>';

$summariesQuery = "select *, dayname(date) as dow from day_summaries order by date desc;";
$summariesResult = $mysqli -> query($summariesQuery);

print "\n";
print '<table id="myTableSummariesByDate" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Date</th>';
print '<th>Day of week</th>';
print '<th>Day job daily update</th>';
print '<th>Personal daily update</th>';
print '<th>Time spent on day job</th>';
print '<th>Time spent on personal projects</th>';
print '<th>Time spent on personal finances</th>';
print '<th>Time spent on personal chores</th>';
print '<th>Time spent on house chores</th>';
print '<th>Time spent on other activities</th>';
print '<th>Notes</th>';
print "</tr></thead>\n<tbody>\n";

function convertToHoursAndMinutes($minutesSpent) {
  if (!isset($minutesSpent)) {
    return "N/A";
  } else {
    $hoursSpent = floor($minutesSpent/60);
    $residualMinutesSpent = $minutesSpent - ($hoursSpent * 60);
    return $hoursSpent.":".sprintf("%02d",$residualMinutesSpent);
  }
}

for ($i = 0; $i < $summariesResult -> num_rows; $i++) {
  $row = $summariesResult -> fetch_assoc();
  print "<tr><td>".$row['date']."</td>";
  print "<td>".$row['dow']."</td>";
  if (!isset($row['day_job_daily_update'])) {
    print '<td>N/A</td>';
  } else {
    print '<td><a href="https://github.com/liftigniter/daily-updates/issues/'.$row['day_job_daily_update'].'" rel="nofollow">#'.$row['day_job_daily_update'].'</a></td>';
  }
  if (!isset($row['personal_daily_update'])) {
    print '<td>N/A</td>';
  } else {
    print '<td><a href="https://github.com/vipulnaik/daily-updates/issues/'.$row['personal_daily_update'].'">#'.$row['personal_daily_update'].'</a></td>';
  }
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_day_job']).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_personal_projects']).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_personal_finances']).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_personal_chores']).'</td>';  
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_house_chores']).'</td>';  
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_other_activities']).'</td>';
  if (isset($row['notes'])) {
    print '<td>'.cleanNotes($row['notes']).'</td>';
  }
  print "</tr>\n";
}

print "</tbody>\n</table>\n";
