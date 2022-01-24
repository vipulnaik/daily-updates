<?php

$monthSummariesQuery = "select min(date) as start_date, max(date) as end_date,
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
  group by year(date), month(date)
  order by min(date) desc;";
$monthSummariesResult = $mysqli -> query($monthSummariesQuery);
$monthSummariesNotesQuery = "select * from month_summaries;";
$monthSummariesNotesResult = $mysqli -> query($monthSummariesNotesQuery);
$notesMap = [];
for ($i = 0; $i < $monthSummariesNotesResult -> num_rows; $i++) {
  $row = $monthSummariesNotesResult -> fetch_assoc();
  $notesMap[$row['month_start_date']] = $row['notes'];
}

print '<h4 id="summariesByMonth">Summaries by month ('.$monthSummariesResult -> num_rows.' rows)</h4>';
print "\n";
print '<table id="myTableSummariesByMonth" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Start date</th>';
print '<th>End date</th>';
print '<th>Number of days</th>';
print '<th>Total accounted time spent per week</th>';
print '<th>Time spent on day job per week</th>';
print '<th>Time spent on personal projects per week</th>';
print '<th>Time spent on personal finances per week</th>';
print '<th>Time spent on personal chores per week</th>';
print '<th>Time spent on house chores per week</th>';
print '<th>Time spent on other activities per week</th>';
print '<th>Notes</th>';
print "</tr></thead>\n<tbody>\n";

for ($i = 0; $i < $monthSummariesResult -> num_rows; $i++) {
  $row = $monthSummariesResult -> fetch_assoc();
  print "<tr><td>".$row['start_date']."</td>";
  print "<td>".$row['end_date']."</td>";
  print "<td>".$row['num_days']."</td>";
  print '<td align="right">'.convertToHoursAndMinutes((7 / ($row['num_days'] ?? 1)) * (($row['minutes_spent_on_day_job'] ?? 0) + ($row['minutes_spent_on_personal_projects'] ?? 0) + ($row['minutes_spent_on_personal_finances'] ?? 0) + ($row['minutes_spent_on_personal_chores'] ?? 0) + ($row['minutes_spent_on_house_chores'] ?? 0) + ($row['minutes_spent_on_other_activities'] ?? 0))).'</td>';
  foreach($typesOfTimeSpent as $columnFragment) {
    printBasedOnColumnFragment($row, $columnFragment, 7 / ($row['num_days'] ?? 1));
  }
  if (isset($notesMap[$row['start_date']])) {
    print "<td>".cleanNotes($notesMap[$row['start_date']])."</td>";
  }
  print "</tr>\n";
}

print "</tbody>\n</table>\n";