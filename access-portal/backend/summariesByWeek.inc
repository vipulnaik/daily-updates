<?php

$typesOfTimeSpent = ['day_job','personal_projects','personal_finances','personal_chores','house_chores','other_activities'];

$weekSummariesQuery = "select min(date) as start_date, max(date) as end_date,
  sum(case when minutes_spent_on_day_job is not null then 1 else 0 end) as num_days_with_day_job_data,
  sum(case when minutes_spent_on_personal_projects is not null then 1 else 0 end) as num_days_with_personal_projects_data,
  sum(case when minutes_spent_on_personal_finances is not null then 1 else 0 end) as num_days_with_personal_finances_data,
  sum(case when minutes_spent_on_personal_chores is not null then 1 else 0 end) as num_days_with_personal_chores_data,
  sum(case when minutes_spent_on_house_chores is not null then 1 else 0 end) as num_days_with_house_chores_data,
  sum(case when minutes_spent_on_other_activities is not null then 1 else 0 end) as num_days_with_other_activities_data,
  sum(coalesce(minutes_spent_on_day_job, 0)) as minutes_spent_on_day_job,
  sum(coalesce(minutes_spent_on_personal_projects, 0)) as minutes_spent_on_personal_projects,
  sum(coalesce(minutes_spent_on_personal_finances, 0)) as minutes_spent_on_personal_finances,
  sum(coalesce(minutes_spent_on_personal_chores, 0)) as minutes_spent_on_personal_chores,
  sum(coalesce(minutes_spent_on_house_chores, 0)) as minutes_spent_on_house_chores,
  sum(coalesce(minutes_spent_on_other_activities, 0)) as minutes_spent_on_other_activities,
  count(1) as num_days
  from day_summaries
  group by round(unix_timestamp(cast(date as datetime)) / (60 * 60 * 24 * 7))
  order by min(date);";
$weekSummariesResult = $mysqli -> query($weekSummariesQuery);

print '<h4 id="summariesByWeek">Summaries by week ('.$weekSummariesResult -> num_rows.' rows)</h4>';
print "\n";
print '<table id="myTableSummariesByWeek" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Start date</th>';
print '<th>End date</th>';
print '<th>Number of days</th>';
print '<th>Time spent on day job</th>';
print '<th>Time spent on personal projects</th>';
print '<th>Time spent on personal finances</th>';
print '<th>Time spent on personal chores</th>';
print '<th>Time spent on house chores</th>';
print '<th>Time spent on other activities</th>';
print "</tr></thead>\n<tbody>\n";

function printMinutesWithNumDaysToolTip($minutesSpent, $numDays) {
  print '<td align="right"><element title="'.$numDays.' days with data">'.convertToHoursAndMinutes($minutesSpent).'</element></td>';
}

function printBasedOnColumnFragment($row, $columnFragment) {
  printMinutesWithNumDaysToolTip($row['minutes_spent_on_'.$columnFragment],$row['num_days_with_'.$columnFragment.'_data']);
}

for ($i = 0; $i < $weekSummariesResult -> num_rows; $i++) {
  $row = $weekSummariesResult -> fetch_assoc();
  print "<tr><td>".$row['start_date']."</td>";
  print "<td>".$row['end_date']."</td>";
  print "<td>".$row['num_days']."</td>";
  foreach($typesOfTimeSpent as $columnFragment) {
    printBasedOnColumnFragment($row, $columnFragment);
  }
  print "</tr>\n";
}

print "</tbody>\n</table>\n";
