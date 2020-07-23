create table day_summaries(
  `date` date primary key not null,
  `day_job_daily_update` int(11) unique,
  `personal_daily_update` int(11) unique,
  `minutes_spent_on_day_job` int(11),
  `minutes_spent_on_personal_projects` int(11),
  `minutes_spent_on_personal_finances` int(11),
  `minutes_spent_on_personal_chores` int(11),
  `minutes_spent_on_house_chores` int(11),
  `minutes_spent_on_other_activities` int(11),
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into day_summaries(date, day_job_daily_update, personal_daily_update, minutes_spent_on_day_job, notes)
  /* Week of 2020-03-30 */
  ('2020-03-30',2676,NULL,290,NULL),
  ('2020-03-31',2679,141,305,NULL),
  ('2020-04-01',2680,142,198,NULL),
  ('2020-04-02',2685,143,275,NULL),
  ('2020-04-03',2688,144,305,NULL),
  ('2020-04-04',NULL,145,0,NULL),
  ('2020-04-05',2689,146,150,NULL),
  /* Week of 2020-04-06 */
  ('2020-04-06',2691,147,312,NULL),
  ('2020-04-07',2703,148,255,NULL),
  ('2020-04-08',2704,NULL,255,NULL),
  ('2020-04-09',2707,NULL,260,NULL),
  ('2020-04-10',2708,151,325,NULL),
  ('2020-04-11',2711,149,80,NULL),
  ('2020-04-12',2718,150,80,NULL),
  /* Week of 2020-04-13 */
  ('2020-04-13',2720,152,312,NULL),
  ('2020-04-14',2724,153,417,NULL),
  ('2020-04-15',2727,154,315,NULL),
  ('2020-04-16',2731,155,320,NULL),
  ('2020-04-17',2733,156,315,NULL),
  ('2020-04-18',2738,157,50,NULL),
  ('2020-04-19',2740,158,45,NULL),
  /* Week of 2020-04-20 */
  ('2020-04-20',2751,159,435,NULL),
  ('2020-04-21',2754,160,416,NULL),
  ('2020-04-22',2757,161,336,NULL),
  ('2020-04-23',2762,163,490,NULL),
  ('2020-04-24',2763,162,372,NULL),
  ('2020-04-25',2765,164,50,NULL),
  ('2020-04-26',2766,165,228,NULL),
  /* Week of 2020-04-27 */
  ('2020-04-27',2767,166,356,NULL),
  ('2020-04-28',2770,NULL,326,NULL),
  ('2020-04-29',2774,167,267,NULL),
  ('2020-04-30',2778,NULL,326,NULL),
  ('2020-05-01',2779,168,252,NULL),
  ('2020-05-02',2783,169,35,NULL),
  ('2020-05-03',2784,170,162,NULL);
  /* Week of 2020-05-04 */
