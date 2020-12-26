create table week_summaries(
  `week_start_date` date primary key not null,
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into week_summaries(week_start_date, notes) values
  ('2020-11-02',NULL),
  ('2020-11-09','I had somewhat fewer work hours than usual, largely because I spent a significant amount of time on house chores and a large amount of time on other activities not tied to my personal projects, finances, or chores.'),
  ('2020-11-16',NULL),
  ('2020-11-23','I had fewer work hours than any week since I resumed hours tracking on 2020-03-09. This was mostly due to a significant amount of time on house chores and a large ammount of time on other activities not tied to my personal projects, finances, or chores.'),
  ('2020-11-30','I had fewer work hours than any week since I resumed hours tracking on 2020-03-09. The reason was two-fold: a significant amount of time wrapping up personal finances, a moderate amount of time on house chores due to a house situation, and a significant amount of time on other activities not tied to my personal projects, finances, or chores.'),
  ('2020-12-07','I had fewer accounted-for-hours than in a typical week; this was due to general end-of-year fatigue and declining work load. I also spent time on personal chores such as getting my state ID card.'),
  ('2020-12-14','I had fewer accounted-for-hours than in a typical week; this was due to a mix of increased time on house chores, that fatigued me more, and general end-of-year fatigue and declining work load. I also spent more time on personal projects than I had since July.');

