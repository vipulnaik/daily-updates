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

insert into day_summaries(date, day_job_daily_update, personal_daily_update, minutes_spent_on_day_job, notes) values
  /* Week of 2020-02-17 */
  ('2020-02-17',NULL,NULL,NULL,'This was a holiday for President''s Day.'),
  ('2020-02-18',NULL,NULL,NULL,'This was my first day reporting for work at my new company; see https://vipulnaik.com/maven-experience/ for more.'),
  ('2020-02-19',NULL,NULL,NULL,NULL),
  ('2020-02-20',NULL,NULL,NULL,NULL),
  ('2020-02-21',NULL,NULL,NULL,NULL),
  ('2020-02-22',NULL,NULL,NULL,NULL),
  ('2020-02-23',NULL,NULL,NULL,NULL), 
  /* Week of 2020-02-24 */
  ('2020-02-24',NULL,NULL,NULL,'I flew to Seattle on this date to visit the headquarters of the new company I was working for; see https://vipulnaik.com/maven-experience/ for more.'),
  ('2020-02-25',NULL,NULL,NULL,NULL),
  ('2020-02-26',NULL,NULL,NULL,'I flew back from Seattle on this date; see https://vipulnaik.com/maven-experience/ for more.'),
  ('2020-02-27',NULL,NULL,NULL,NULL),
  ('2020-02-28',NULL,NULL,NULL,NULL),
  ('2020-02-29',NULL,NULL,NULL,NULL),
  ('2020-03-01',NULL,NULL,NULL,NULL), 
  /* Week of 2020-03-02 */
  ('2020-03-02',NULL,NULL,NULL,NULL),
  ('2020-03-03',NULL,NULL,NULL,NULL),
  ('2020-03-04',NULL,NULL,NULL,NULL),
  ('2020-03-05',NULL,NULL,NULL,NULL),
  ('2020-03-06',NULL,NULL,NULL,'This was the last day I went to a physical office, and the last day I took BART. See https://vipulnaik.com/maven-experience/ and https://vipulnaik.com/covid-19/ for more.'),
  ('2020-03-07',NULL,NULL,NULL,NULL),
  ('2020-03-08',NULL,NULL,NULL,NULL),  
  /* Week of 2020-03-09 */
  ('2020-03-09',2614,NULL,210,'I resumed day job daily updates on this date after a while; my most recent day job daily update before this was on 2020-01-29.'),
  ('2020-03-10',2616,NULL,355,NULL),
  ('2020-03-11',2618,NULL,269,NULL),
  ('2020-03-12',2625,126,145,NULL),
  ('2020-03-13',2628,127,295,NULL),
  ('2020-03-14',2631,128,45,'There is a single daily update issue for Saturday 2020-03-14 and 2020-03-15. I have put the entirety of it for 2020-03-14.'),
  ('2020-03-15',NULL,129,0,'There is a single daily update issue for Saturday 2020-03-14 and 2020-03-15. I have put the entirety of it for 2020-03-14.'),
  /* Week of 2020-03-16 */
  ('2020-03-16',2633,130,370,NULL),
  ('2020-03-17',2636,131,343,NULL),
  ('2020-03-18',2638,132,277,NULL),
  ('2020-03-19',2642,NULL,375,NULL),
  ('2020-03-20',2645,133,175,NULL),
  ('2020-03-21',2647,134,70,NULL),
  ('2020-03-22',2648,135,20,NULL),
  /* Week of 2020-03-23 */
  ('2020-03-23',2650,NULL,360,NULL),
  ('2020-03-24',2664,137,370,NULL),
  ('2020-03-25',2666,136,335,NULL),
  ('2020-03-26',2670,138,230,NULL),
  ('2020-03-27',2673,NULL,410,NULL),
  ('2020-03-28',NULL,139,NULL,NULL),
  ('2020-03-29',NULL,140,NULL,NULL),
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
  ('2020-05-03',2784,170,162,NULL),
  /* Week of 2020-05-04 */
  ('2020-05-04',2785,171,350,NULL),
  ('2020-05-05',2797,NULL,360,NULL),
  ('2020-05-06',2799,NULL,469,NULL),
  ('2020-05-07',2801,172,347,NULL),
  ('2020-05-08',2803,NULL,423,NULL),
  ('2020-05-09',2804,173,62,NULL),
  ('2020-05-10',2807,174,162,NULL),
  /* Week of 2020-05-11 */
  ('2020-05-11',2813,175,442,NULL),
  ('2020-05-12',2815,176,421,NULL),
  ('2020-05-13',2821,177,431,NULL),
  ('2020-05-14',2823,178,393,NULL),
  ('2020-05-15',2825,179,240,NULL),
  ('2020-05-16',2828,180,95,NULL),
  ('2020-05-17',2829,181,235,NULL),
  /* Week of 2020-05-18 */
  ('2020-05-18',2830,182,408,NULL),
  ('2020-05-19',2831,NULL,470,NULL),
  ('2020-05-20',2836,NULL,427,NULL),
  ('2020-05-21',2839,NULL,485,NULL),
  ('2020-05-22',2843,NULL,475,NULL),
  ('2020-05-23',2848,183,215,'Saturday of Memorial Day Weekend; time estimates present for personal update'),
  ('2020-05-24',2849,184,128,'Sunday of Memorial Day Weekend'),
  /* Week of 2020-05-25 */
  ('2020-05-25',2850,185,305,'Memorial Day'),
  ('2020-05-26',2851,186,390,NULL),
  ('2020-05-27',2853,NULL,540,NULL),
  ('2020-05-28',2855,NULL,355,NULL),
  ('2020-05-29',2858,NULL,485,NULL),
  ('2020-05-30',2860,187,45,NULL),
  ('2020-05-31',2861,188,208,NULL),
  /* Week of 2020-06-01 */
  ('2020-06-01',2862,189,415,NULL),
  ('2020-06-02',2869,190,270,'Company notice of "suspending all opeerations on Tuesday at noon, Eastern Time"'),
  ('2020-06-03',2873,191,411,NULL),
  ('2020-06-04',2876,192,473,NULL),
  ('2020-06-05',2879,193,503,NULL),
  ('2020-06-06',2881,194,250,NULL),
  ('2020-06-07',2882,195,167,NULL),
  /* Week of 2020-06-08 */
  ('2020-06-08',2899,196,401,NULL),
  ('2020-06-09',2902,NULL,475,NULL),
  ('2020-06-10',2904,197,380,NULL),
  ('2020-06-11',2906,198,363,NULL),
  ('2020-06-12',2908,NULL,395,NULL),
  ('2020-06-13',2910,199,200,NULL),
  ('2020-06-14',2911,200,168,NULL),
  /* Week of 2020-06-15 */
  ('2020-06-15',2913,NULL,407,NULL),
  ('2020-06-16',2927,NULL,345,NULL),
  ('2020-06-17',2935,201,395,NULL),
  ('2020-06-18',2937,NULL,405,NULL),
  ('2020-06-19',2939,202,190,'Company holiday for Juneteenth'),
  ('2020-06-20',NULL,203,0,'No day job work on this day'),
  ('2020-06-21',2940,204,40,NULL),
  /* Week of 2020-06-22 */
  ('2020-06-22',2941,205,430,NULL),
  ('2020-06-23',2946,NULL,470,NULL),
  ('2020-06-24',2950,206,270,NULL),
  ('2020-06-25',2953,207,435,NULL),
  ('2020-06-26',2955,208,425,NULL),
  ('2020-06-27',2956,209,225,NULL),
  ('2020-06-28',2957,210,140,NULL),
  /* Week of 2020-06-29 */
  ('2020-06-29',2958,NULL,414,NULL),
  ('2020-06-30',2965,NULL,372,NULL),
  ('2020-07-01',2968,211,286,NULL),
  ('2020-07-02',2970,212,328,NULL),
  ('2020-07-03',2973,213,300,'Day job holiday for "observed" Independence Day'),
  ('2020-07-04',2975,214,82,NULL),
  ('2020-07-05',2976,215,149,NULL),
  /* Week of 2020-07-06 */
  ('2020-07-06',2977,216,396,NULL),
  ('2020-07-07',2981,217,322,NULL),
  ('2020-07-08',2984,218,237,NULL),
  ('2020-07-09',2987,219,295,NULL),
  ('2020-07-10',2991,220,295,NULL),
  ('2020-07-11',2992,221,75,NULL),
  ('2020-07-12',2993,222,290,NULL),
  /* Week of 2020-07-13 */
  ('2020-07-13',2996,223,399,NULL),
  ('2020-07-14',2997,224,397,NULL),
  ('2020-07-15',3001,NULL,380,NULL);

insert into day_summaries(date, day_job_daily_update, personal_daily_update, minutes_spent_on_day_job, minutes_spent_on_personal_projects, minutes_spent_on_personal_finances, minutes_spent_on_personal_chores, minutes_spent_on_house_chores, minutes_spent_on_other_activities, notes) values
  /* Week of 2020-07-13 */
  ('2020-07-16',3005,225,468,30,0,20,0,0,NULL),
  ('2020-07-17',3006,NULL,310,0,0,0,0,0,NULL),
  ('2020-07-18',3009,226,258,77,5,130,0,0,NULL),
  ('2020-07-19',3010,227,230,75,10,0,0,0,NULL),
  /* Week of 2020-07-20 */
  ('2020-07-20',3032,228,272,165,0,60,0,0,NULL),
  ('2020-07-21',3034,229,327,15,0,15,0,60,NULL),
  ('2020-07-22',3038,230,263,70,0,40,0,0,NULL),
  ('2020-07-23',3039,231,280,0,0,105,0,30,NULL),
  ('2020-07-24',3042,232,360,10,0,0,0,10,NULL),
  ('2020-07-25',3046,233,265,125,80,0,0,0,NULL),
  ('2020-07-26',3047,234,260,5,0,70,0,90,NULL);
