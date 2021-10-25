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
  ('2020-12-14','I had fewer accounted-for-hours than in a typical week; this was due to a mix of increased time on house chores, that fatigued me more, and general end-of-year fatigue and declining work load. I also spent more time on personal projects than I had since July.'),
  ('2020-12-21','I had fewer day job hours than in any week since March; this was largely due to reduced workload and the additional Christmas holidays. The freed-up time went to a mix of house chores, backups, and the launch of https://ese.vipulnaik.com/ that I had been planning to do for some time. Very little went to the personal projects category.'),
  ('2020-12-28','My time on house chores went down now that a tenant was secured and started move-in. On the other hand, I spent a lot of time on end-of-year finalizations, mostly on personal finances, income and taxes. Officially, there were only three working days, and I ended up working for only a small part of the official holidays.'),
  ('2021-01-04','I had a somewhat unusual week; I spent a little more weekday time on non-work tasks, including weekly meal prep. However, I spent the weekend almost entirely on work.'),
  ('2021-01-11','This was a relatively low-energy week where I spent very little non-work time, but still had an average amount of work time spent.'),
  ('2021-01-18','I spent a lot of time this weekend on discussions and research related to health (this shows up in the other activities bucket). There was no particular urgency; I do expect to do a review of this sort every so often.'),
  ('2021-01-25','I picked up one of my personal projects that had been paused since July 2020 (work on migration policy and history). This did not eat up too much into other uses of my time, as I was overall more energetic this week and thus ended up having a more "productive" weekend.'),
  ('2021-02-01','Unlike the previous few weeks, I spent a lot of time on a house matter; this extra time came mainly at the expense of work time. Also, the end-of-month transition meant a little bit more time on personal projects and personal finances.'),
  ('2021-02-08','I spent five hours on the weekend drafting my US federal and California state income tax returns (based on preliminary calculations done back in January). This mostly ate into weekend time that I would normally spend on work.'),
  ('2021-02-15','The shadow of taxes continued: I spent a lot of time on Monday (officially a work holiday) on updating tax information in the contract work repository, and also spent time on Saturday wrapping up my tax filing. I was also able to wrap up data entry backfill for my health records. I did not spend time on the weekend cooking; as a result, I spent slightly more unduplexed time watching MasterClass and Viki.'),
  ('2021-02-22','This week had a smaller number of total accounted hours than usual, partly because of a relaxed Saturday and also because, during the week, I worked at the lower end of normal but did not use the freed-up time for any other accounted activities. Mostly, I was taking things a little bit slower.'),
  ('2021-03-01','Over the weekend, I spent a lot of time during the day lazing around, watching Encounter (Korean drama) and rewatching some episodes of Gilmore Girls. This partly explains my lower total accounted-for time over the week.'),
  ('2021-03-08','Time-sensitive tasks in the realms of house chores and other activities ended up taking way more time than usual, leading to a reduction in total time spent at work.'),
  ('2021-03-15','Time-sensitive activities involving a friend ended up taking a large share of my time this week. My total work time was therefore a little on the low end; I also ended up spending no time on personal projects.'),
  ('2021-03-22','Time-sensitive activities involving a friend ended up taking a large share of my time this week. My total work time was close to normal; most of the hit was taken in my time spent on personal projects and there was also an increase in my total accounted time spent.'),
  ('2021-03-29','The main highlights outside the work front were end-of-month tasks, some house matters, and wrapping up of time-sensitive activities involving a friend.'),
  ('2021-04-05','I continued to get more on top of work, wrapping up my planned work for the week by Saturday. Sunday was a bit slow, wrapping up some important but drudge-ish work on nutrition, but I finally got around to updating my standing plan and returning to personal projects.'),
  ('2021-04-12','I spent more time than usual chatting with friends; this cut a little bit (but not too much) into work time.'),
  ('2021-04-19','I had a relatively normal amount of work time; slightly on the lower end during the week, compensated by slightly on the higher end during the weekend.'),
  ('2021-04-26','I spent a large chunk of time on two weekdays working on personal projects, explaining the greater total time spent on personal projects. My overall accounted time spent was lower than normal, partly because of less accounted time on weekends and partly because the change to increase time on personal projects led to some overhead of inefficiency.'),
  ('2021-05-03','I spent more of my weekend time working than usual.'),
  ('2021-05-10','I had somewhat-lower-than-usual total-accounted-for-hours, mostly due to some inefficiencies during the week. I didn''t spend time on personal projects or personal finances at all.'),
  ('2021-05-17','I did two rounds of cooking (and also correspondingly two rounds of food purchase) so I spent more time on personal chores than usual. The increased time came mostly at the expense of my time spent on work. I spent almost no time on personal projects and personal finances, similar to the previous week.'),
  ('2021-05-24','I spent a lot of time on disposal of items (clothes, e-waste, recycling containers) and as a result I had less time available for work and other activities. I also got my COVID shot. On Sunday, I spent a lot of time watching the TV show Startup on Netflix, resulting in lower total-accounted-for-time for the week.'),
  ('2021-05-31','I spent a lot of time on personal projects, partly because of Monday being a holiday for Memorial Day and partly because of the experimentation with reducing my work time to 75% of what it used to be. I also did two rounds of meal prep instead of one, leading to more time on personal chores than usual.'),
  ('2021-06-07','I continued to spend a lot of time on personal projects, as part of the experimentation with reducing my work time to 75% of what it used to be. I also had somewhat lower accounted-for-time than usual overall, partly as a result of overhead from the adjustment to the new routine.'),
  ('2021-06-14','This week I returned to a closer-to-normal amount of work time, correspondingly reducing my time on personal projects.'),
  ('2021-06-21','I went back down to 75% work time, not fully intentionally (I was hoping to be closer to 90%). Most of the remaining time was not spent on personal projects; it was spent on a mix of personal chores (including getting and recovering from the COVID vaccine) and other activities.'),
  ('2021-06-28','I worked a little less even than my target 75% work time, mostly because I had reached a logical point with various work-related activities. I expect to do some more work in future weeks based on what fits naturally, so that the average evens out.'),
  ('2021-07-05','I worked more than my target 75% work time, partly to make up for less work than planned in previous weeks, and partly because I wanted to get ahead on time-sensitive tasks.'),
  ('2021-07-12','I worked a little bit overtime to make progress on some time-sensitive day job stuff. I had correspondingly less time for personal projects.'),
  ('2021-07-19','I worked around 100% (rather than my long-term reduced 75%) for a few reasons: (a) to make progress on time-sensitive day job stuff, (b) to cancel out early start of reduced time in June (official plan had been to start from July), and (c) to be better prepared for likely disruptions in the next few weeks.'),
  ('2021-07-26','I worked a little over my reduced (75%) time but still keeping the spirit of it by taking out a fair amount of time for personal projects. My personal projects time (not including work related to the change of month) was early in the week, on Monday, Tuesday, and Wednesday, so I ended up spending time on work on Sunday.'),
  ('2021-08-02','My work hours came to my expected 75% time; however, I did not get much time for personal projects. I ended up spending a lot of time on house-related items, and also had a few meetings that fall under "other activities".'),
  ('2021-08-09','A combination of dentist trip plus followup (showing up under personal chores) and house stuff (showing up under house chores) took a large share of my time, causing my work time to fall to a little below the target 75%. In addition, partly due to fatigue and boredom, I couldn''t get to spend even my limited free time on personal projects, and I ended up instead spending it on other activities.'),
  ('2021-08-16','Like the previous week, this week was also heavy on personal chores, house chores, and other activities, but future weeks are expected to be relatively light on these fronts, allowing for a greater degree of return to personal projects. My work time was still a little below the target 75%, but I did spend some time on personal projects (albeit on Groupprops, which is not one of the two main personal projects I am focusing on).')
  ('2021-08-23','With some house-related stuff wrapping up, I spent extra time on my day job (100%+ instead of target 75%); this helped me more than catch up on day job in terms of number of hours. I expect to return to my usual 75% on the day job in coming weeks, and use the time thus freed up to return to personal projects.'),
  ('2021-08-30','I returned more to what I expect my usual routine to be. Though I did spend more work hours than I expect to average, I also resumed work on personal projects, devoting a large portion of my Sunday to personal projects.'),
  ('2021-09-06','My total accounted time spent was much lower than usual. This is partly explained by my spending Monday on personal projects that were a little difficult to concentrate on, and consequently multiplexing with watching Netflix. I similarly multiplexed day job work on the weekend with watching Netflix. Despite the low-seeming total, I feel I had a fairly rounded week in terms of making progress on personal projects while not being too far below my target of 75% of work time for the day job.'),
  ('2021-09-13','My total accounted time spent was much lower than usual. This is partly explained by my spending Sunday on personal projects that were a little difficult to concentrate on, and consequently multiplexing with listening to podcasts and interviews. Even earlier in the week, I engaged in similar multiplexing, leading to reduced work efficiency and less accounted-for-time. See https://ese.vipulnaik.com/#consumptionList for more information on my consumption.'),
  ('2021-09-20','This week was a deliberate experiment on my part with reducing work hours even more to spend more time on personal projects. I spent more time on personal projects than in any week on record since I started tracking the time a year ago. I also spent less time on work than I have in any fully recorded week. Despite these firsts, I did not develop any backlog nor did I leave any of my work colleagues blocked. The experiment was overall a success and I might do it in the future as well. The next experiment to try is taking more continuous time off work which would enable me to do pieces of personal projects that need longer stretches of time. I also spent double-time on personal chores (shopping, cooking) just as a result of timing of various things.'),
  ('2021-09-27','I spent many hours in the week dealing with personal chores (dentist trip) and house chores (toilet clog).'),
  ('2021-10-04','I spent much more time than usual on personal chores, including three rounds of meal prep and a dentist trip. I still worked a little over my 75% work hours, so personal projects took the biggest hit.'),
  ('2021-10-11','This week was partly a deliberate experiment with reducing work hours in order to spend more time on personal projects, but it also happened to be a week where I had some time-sensitive tasks in the "other activities" bucket.'),
  ('2021-10-18','This week was qualitatively similar to the previous week: I spent a lot of time on personal projects as well as in the "other activities" bucket, so my work hours fell short of the 75% target. I expect to return to a normal level of work hours by the next week or the week after. I expect that this will be via the "other activities" bucket subsiding, and I will continue to be able to spend a comparable amount of time on personal projects.');
