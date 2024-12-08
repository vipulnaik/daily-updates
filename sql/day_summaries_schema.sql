create table day_summaries(
  `date` date primary key not null,
  `day_job_liftigniter_and_arena_daily_update` int(11) unique,
  `day_job_equator_daily_update` int(11) unique,
  `personal_daily_update` int(11) unique,
  `minutes_spent_on_day_job_liftigniter_and_arena` int(11),
  `minutes_spent_on_day_job_equator` int(11),
  `minutes_spent_on_personal_projects` int(11),
  `minutes_spent_on_personal_finances` int(11),
  `minutes_spent_on_personal_chores` int(11),
  `minutes_spent_on_house_chores` int(11),
  `minutes_spent_on_family_and_career_planning` int(11),
  `minutes_spent_on_other_activities` int(11),
  `screen_minutes_m1` int(11),
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
