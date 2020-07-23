<?php
include_once('doctype.inc');
print '<title>Updates for Vipul Naik</title>';
# include_once('analytics.inc');
include_once('strip-commas.inc');
# include_once('backend/graphing.inc');
print '<link href="style.css" rel="stylesheet" type="text/css" />'."\n";
print '<script type="text/javascript" src="./jquery-3.1.1.min.js"></script>'."\n";
print '<script type="text/javascript" src="./jquery.tablesorter.js"></script>'."\n";
print '</head>';
include_once("backend/globalVariables/passwordFile.inc");
print "<body>\n";
print '<script>$(document).ready(function(){$("table").tablesorter({textExtraction: stripCommas});});</script>'."\n";
print '<h3>Updates for Vipul Naik</h3>';
include_once('preamble.inc');
print '<h4>Table of contents</h4>';
print '<ul>';
print '<li><a href="#summariesByDate">Summaries by date</a></li>';
print '</ul>';

include ("backend/summariesByDate.inc");

include_once('anchorjs.inc');
print '</body>';
?>
