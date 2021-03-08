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
  ('2021-03-01','Over the weekend, I spent a lot of time during the day lazing around, watching Encounter (Korean drama) and rewatching some episodes of Gilmore Girls. This partly explains my lower total accounted-for time over the week.');
