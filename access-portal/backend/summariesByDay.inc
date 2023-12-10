<?php

$summariesQuery = "select *, dayname(date) as dow from day_summaries order by date desc;";
$summariesResult = $mysqli -> query($summariesQuery);

print '<h4 id="summariesByDay">Summaries by day ('.$summariesResult -> num_rows.' rows)</h4>';
print "\n";
print '<table id="myTableSummariesByDay" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Date</th>';
print '<th>Day of week</th>';
print '<th>Day job daily update (LiftIgniter / The Arena Group)</th>';
print '<th>Day job daily update (Equator)</th>';
print '<th>Personal daily update</th>';
print '<th>Total accounted time spent</th>';
print '<th>Total time spent on all day jobs</th>';
print '<th>Time spent on day job (LiftIgniter / The Arena Group)</th>';
print '<th>Time spent on day job (Equator)</th>';
print '<th>Time spent on personal projects</th>';
print '<th>Time spent on personal finances</th>';
print '<th>Time spent on personal chores</th>';
print '<th>Time spent on house chores</th>';
print '<th>Time spent on family and career planning</th>';
print '<th>Time spent on other activities</th>';
print '<th>Total screen minutes (excluding screen time during meals)</th>';
print '<th>Notes</th>';
print "</tr></thead>\n<tbody>\n";

for ($i = 0; $i < $summariesResult -> num_rows; $i++) {
  $row = $summariesResult -> fetch_assoc();
  print '<tr id="day-'.$row['date'].'"><td>'.$row['date'].'</td>';
  print "<td>".$row['dow']."</td>";
  if (!isset($row['day_job_liftigniter_and_arena_daily_update'])) {
    print '<td>N/A</td>';
  } else {
    print '<td><a href="https://github.com/themaven-net/daily-updates/issues/'.$row['day_job_liftigniter_and_arena_daily_update'].'" rel="nofollow">#'.$row['day_job_liftigniter_and_arena_daily_update'].'</a></td>';
  }
  if (!isset($row['day_job_equator_daily_update'])) {
    print '<td>N/A</td>';
  } else {
    print '<td><a href="https://github.com/Equator-Therapeutics/daily-updates/issues/'.$row['day_job_equator_daily_update'].'" rel="nofollow">#'.$row['day_job_equator_daily_update'].'</a></td>';
  }
  if (!isset($row['personal_daily_update'])) {
    print '<td>N/A</td>';
  } else {
    print '<td><a href="https://github.com/vipulnaik/daily-updates/issues/'.$row['personal_daily_update'].'">#'.$row['personal_daily_update'].'</a></td>';
  }
  print '<td align="right">'.convertToHoursAndMinutes(($row['minutes_spent_on_day_job_liftigniter_and_arena'] ?? 0) + ($row['minutes_spent_on_day_job_equator'] ?? 0) + ($row['minutes_spent_on_personal_projects'] ?? 0) + ($row['minutes_spent_on_personal_finances'] ?? 0) + ($row['minutes_spent_on_personal_chores'] ?? 0) + ($row['minutes_spent_on_house_chores'] ?? 0) + ($row['minutes_spent_on_family_and_career_planning'] ?? 0) + ($row['minutes_spent_on_other_activities'] ?? 0)).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes(($row['minutes_spent_on_day_job_liftigniter_and_arena'] ?? 0) + ($row['minutes_spent_on_day_job_equator'] ?? 0)).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_day_job_liftigniter_and_arena']).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_day_job_equator']).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_personal_projects']).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_personal_finances']).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_personal_chores']).'</td>';  
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_house_chores']).'</td>';  
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_family_and_career_planning']).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes($row['minutes_spent_on_other_activities']).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes($row['screen_minutes_m1']).'</td>';
  if (isset($row['notes'])) {
    print '<td>'.cleanNotes($row['notes']).'</td>';
  }
  print "</tr>\n";
}

print "</tbody>\n</table>\n";
