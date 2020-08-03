<?php

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

?>
