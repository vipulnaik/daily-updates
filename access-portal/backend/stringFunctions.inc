<?php

$typesOfTimeSpent = ['day_job_liftigniter_and_arena','day_job_equator','personal_projects','personal_finances','personal_chores','house_chores','family_and_career_planning','other_activities'];

function convertToHoursAndMinutes($minutesSpent) {
  if (!isset($minutesSpent)) {
    return "N/A";
  } else {
    $hoursSpent = floor($minutesSpent/60);
    $residualMinutesSpent = $minutesSpent - ($hoursSpent * 60);
    return $hoursSpent.":".sprintf("%02d",$residualMinutesSpent);
  }
}

function cleanNotes($notes) {
  $notesList = explode(" ",$notes);
  $augmentedNotes = "";
  foreach ($notesList as $notesWord) {
    if (substr($notesWord,0,4) == "http") {
      $augmentedNotes = $augmentedNotes . '<a href="'.$notesWord.'">'.$notesWord.'</a> ';
    } else {
      $augmentedNotes = $augmentedNotes . $notesWord . " ";
    }
  }
  return $augmentedNotes;
}

function printMinutesWithNumDaysToolTip($minutesSpent, $numDays) {
  print '<td align="right"><element title="'.$numDays.' days with data">'.convertToHoursAndMinutes($minutesSpent).'</element></td>';
}

function printBasedOnColumnFragment($row, $columnFragment, $normalizer) {
  printMinutesWithNumDaysToolTip($normalizer * $row['minutes_spent_on_'.$columnFragment], $row['num_days_with_'.$columnFragment.'_data']);
}

?>
