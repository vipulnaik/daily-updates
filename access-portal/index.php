<?php
include_once('doctype.inc');
print '<script src="change-theme.js"></script>';
print '<title>Updates for Vipul Naik</title>';
include_once('strip-commas.inc');
include_once('backend/stringFunctions.inc');
print '<link href="style.css" rel="stylesheet" type="text/css" />'."\n";
include_once('style.inc');
print '<script type="text/javascript" src="./jquery-3.7.1.min.js"></script>'."\n";
print '<script type="text/javascript" src="./jquery.tablesorter.js"></script>'."\n";
print '</head>';
include_once('backend/globalVariables/passwordFile.inc');
print "<body>\n";
print '<script>$(document).ready(function(){$("table").tablesorter({textExtraction: stripCommas});});</script>'."\n";
print '<h3>Updates for Vipul Naik</h3>';
?>

<p><span id="changeThemeMenu" style="display: none;">Set color scheme to:
         <span id="auto-menu-option" style="cursor: pointer;" class="unselectable" onclick="change_theme.set_color('auto')">auto</span>,
         <span id="light-menu-option" style="cursor: pointer;" class="unselectable" onclick="change_theme.set_color('light')">light</span>,
         <span id="dark-menu-option" style="cursor: pointer;" class="unselectable" onclick="change_theme.set_color('dark')">dark</span>
</span>&thinsp;<!-- blank space to prevent cumulative layout shift --></p>

<?php
include_once('preamble.inc');
print '<h4>Table of contents</h4>';
print '<ul>';
print '<li><a href="#summariesByYear">Summaries by year</a></li>';
print '<li><a href="#summariesByMonth">Summaries by month</a></li>';
print '<li><a href="#summariesByWeek">Summaries by week</a></li>';
print '<li><a href="#summariesByDay">Summaries by day</a></li>';
print '</ul>';

include ("backend/summariesByYear.inc");
include ("backend/summariesByMonth.inc");
include ("backend/summariesByWeek.inc");
include ("backend/summariesByDay.inc");

include_once('anchorjs.inc');
print '</body>';
?>
