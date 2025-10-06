<?php

$monthSummariesQuery = "select min(date) as start_date, max(date) as end_date,
  sum(case when minutes_spent_on_day_job_liftigniter_and_arena is not null then 1 else 0 end) as num_days_with_day_job_liftigniter_and_arena_data,
  sum(case when minutes_spent_on_day_job_equator is not null then 1 else 0 end) as num_days_with_day_job_equator_data,
  sum(case when minutes_spent_on_personal_projects is not null then 1 else 0 end) as num_days_with_personal_projects_data,
  sum(case when minutes_spent_on_personal_finances is not null then 1 else 0 end) as num_days_with_personal_finances_data,
  sum(case when minutes_spent_on_personal_chores is not null then 1 else 0 end) as num_days_with_personal_chores_data,
  sum(case when minutes_spent_on_house_chores is not null then 1 else 0 end) as num_days_with_house_chores_data,
  sum(case when minutes_spent_on_family_and_career_planning is not null then 1 else 0 end) as num_days_with_family_and_career_planning_data,
  sum(case when minutes_spent_on_other_activities is not null then 1 else 0 end) as num_days_with_other_activities_data,
  sum(case when screen_minutes_m1 is not null then 1 else 0 end) as num_days_with_screen_minutes_m1,
  sum(coalesce(minutes_spent_on_day_job_liftigniter_and_arena, 0)) as minutes_spent_on_day_job_liftigniter_and_arena,
  sum(coalesce(minutes_spent_on_day_job_equator, 0)) as minutes_spent_on_day_job_equator,
  sum(coalesce(minutes_spent_on_personal_projects, 0)) as minutes_spent_on_personal_projects,
  sum(coalesce(minutes_spent_on_personal_finances, 0)) as minutes_spent_on_personal_finances,
  sum(coalesce(minutes_spent_on_personal_chores, 0)) as minutes_spent_on_personal_chores,
  sum(coalesce(minutes_spent_on_house_chores, 0)) as minutes_spent_on_house_chores,
  sum(coalesce(minutes_spent_on_family_and_career_planning, 0)) as minutes_spent_on_family_and_career_planning,
  sum(coalesce(minutes_spent_on_other_activities, 0)) as minutes_spent_on_other_activities,
  sum(coalesce(num_cpc_ltbcs, 0)) as num_cpc_ltbcs,
  sum(coalesce(screen_minutes_m1, 0)) as screen_minutes_m1,
  count(1) as num_days
  from day_summaries
  group by year(date), month(date)
  order by min(date) desc;";
$monthSummariesResult = $mysqli -> query($monthSummariesQuery);
$monthSummariesNotesQuery = "select * from month_summaries order by month_start_date desc;";
$monthSummariesNotesResult = $mysqli -> query($monthSummariesNotesQuery);
$notesMap = [];
for ($i = 0; $i < $monthSummariesNotesResult -> num_rows; $i++) {
  $row = $monthSummariesNotesResult -> fetch_assoc();
  $notesMap[$row['month_start_date']] = $row['notes'];
}

print '<h4 id="summariesByMonth">Summaries by month ('.$monthSummariesNotesResult -> num_rows.' rows)</h4>';
print "\n";
print '<table id="myTableSummariesByMonth" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Start date</th>';
print '<th>End date</th>';
print '<th>Number of days</th>';
print '<th>Total accounted time spent per week</th>';
print '<th>Total time spent on all days jobs per week</th>';
print '<th>Time spent on day job per week (LiftIgniter / The Arena Group)</th>';
print '<th>Time spent on day job per week (Equator)</th>';
print '<th>Time spent on personal projects per week</th>';
print '<th>Time spent on personal finances per week</th>';
print '<th>Time spent on personal chores per week</th>';
print '<th>Time spent on house chores per week</th>';
print '<th>Time spent on family and career planning per week</th>';
print '<th>Time spent on other activities per week</th>';
print '<th>Number of cyclic personal chores with long time block commitments per week</th>';
print '<th>Total screen minutes per week (excluding screen time during meals)</th>';
print '<th>Notes</th>';
print "</tr>\n</thead>\n<tbody>\n";

for ($i = 0; $i < $monthSummariesResult -> num_rows; $i++) {
  $row = $monthSummariesResult -> fetch_assoc();
  print '<tr id="month-'.$row['start_date'].'">';
  print "<td>".$row['start_date']."</td>";
  print "<td>".$row['end_date']."</td>";
  print "<td>".$row['num_days']."</td>";
  print '<td align="right">'.convertToHoursAndMinutes((7 / ($row['num_days'] ?? 1)) * (($row['minutes_spent_on_day_job_liftigniter_and_arena'] ?? 0) + ($row['minutes_spent_on_day_job_equator'] ?? 0) + ($row['minutes_spent_on_personal_projects'] ?? 0) + ($row['minutes_spent_on_personal_finances'] ?? 0) + ($row['minutes_spent_on_personal_chores'] ?? 0) + ($row['minutes_spent_on_house_chores'] ?? 0) + ($row['minutes_spent_on_family_and_career_planning'] ?? 0) + ($row['minutes_spent_on_other_activities'] ?? 0))).'</td>';
  print '<td align="right">'.convertToHoursAndMinutes((7 / ($row['num_days'] ?? 1)) * (($row['minutes_spent_on_day_job_liftigniter_and_arena'] ?? 0) + ($row['minutes_spent_on_day_job_equator'] ?? 0))).'</td>';
  $adjustmentFactor = 7 / ($row['num_days'] ?? 1);
  foreach($typesOfTimeSpent as $columnFragment) {
    printBasedOnColumnFragment($row, $columnFragment, $adjustmentFactor);
  }
  print '<td align="right">'.number_format($row['num_cpc_ltbcs'] * $adjustmentFactor, 2).'</td>';
  printMinutesWithNumDaysToolTip($adjustmentFactor * $row['screen_minutes_m1'], $row['num_days_with_screen_minutes_m1']);
  if (isset($notesMap[$row['start_date']])) {
    print "<td>".cleanNotes($notesMap[$row['start_date']])."</td>";
  } elseif ($row['start_date'] == '2018-08-10') {
    print "<td>".cleanNotes($notesMap['2018-08-01'])."</td>";
  }
  print "</tr>\n";
}

$monthSummariesNotesResult -> data_seek(0);
for ($i = 0; $i < $monthSummariesNotesResult -> num_rows; $i++) {
  $row = $monthSummariesNotesResult -> fetch_assoc();
  if ($row['month_start_date'] <= "2018-07-01") {
     print "<tr><td>".$row['month_start_date']."</td>";
     print "<td>".$row['month_end_date']."</td>";
     for ($j = 0; $j < 13; $j++) {
       print "<td>N/A</td>";
     }
     print "<td>".cleanNotes($row['notes'])."</td>";
  }
  print "</tr>\n";
}
print "</tbody>\n</table>\n";
