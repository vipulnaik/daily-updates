create table month_summaries(
  `month_start_date` date primary key not null,
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into month_summaries(month_start_date, notes) values
  ('2020-02-01','This was the month when the acquisition of LiftIgniter by Maven happened (as far as employees are concerned); I started work at Maven on 2020-02-16. Amidst all the upheaval, I did not maintain either personal or work daily updates.'),
  ('2020-03-01','This was the month when COVID hit; 2020-03-09 was the start of a work-from-home that would continue indefinitely. That was also the day that I resumed work daily updates. I also started a housemate search in response to a COVID-related departure.'),
  ('2020-04-01','This was a fairly busy month at work as I ramped up on Maven''s stack while continuing LiftIgniter work; I also spent time on housemate search amidst a series of pandemic-related departures, which used up a lot of my non-work time. On the positive front, I signed up for MasterClass, and also got more accustomed to a work-from-home routine (e.g., figuring out ergonomics).'),
  ('2020-05-01','As my housemate situation resolved, I ramped up effort on day job work this month.'),
  ('2020-06-01','I continued working hard on day job work this month.'),
  ('2020-07-01','I reduced my day job work a little bit compared to the May/June peak as some of the initial ramp-up at Maven slowed down. I also spent a bit more time on personal projects. Starting 2020-07-16, I began recording various categories of personal time spent.'),
  ('2020-08-01','I upped my day job work a little bit compared to July, but it was mostly the same.'),
  ('2020-09-01','This month was qualitatively pretty similar to August; I made a trip to San Francisco on the Labor Day weekend to buy shoes.'),
  ('2020-10-01','My work hours reduced a little bit; my total accounted-for hours went up quite a bit. The increase was mainly in house chores (another housemate search) and other activities. On 2020-10-25, I finished backfilling daily updates, so https://updates.vipulnaik.com/ was now fully backfilled.'),
  ('2020-11-01','I reduced my work hours further and also reduced my total accounted-for hours. I spent a fair amount of time on house chores (another housemate search) and other activities.'),
  ('2020-12-01','This month, my work hours were significantly lower than previous months. This was explained both by continued time on house chores (housemate search) as well as the use of the holiday period to spend more time on personal projects, personal finances, and other activities. I got my entertainment and self-education portal https://ese.vipulnaik.com/ ready.'),
  ('2021-01-01','As some major projects at work wrapped up and the next projects were less effort-intensive, this month continued the trend of lower day job hours, though there was some recovery from December. Time on house chores and other activities went down to normal; there was an increase in time on personal finances due to end-of-year tax work.'),
  ('2021-02-01','I continued working at about the same pace as January. I continued to spend some time on finances, specifically on tax-related stuff (similar to January) to finish my tax filing. I spent more time than usual on house chores, working out an issue.'),
  ('2021-03-01','I continued working at about the same pace as February. I continued to spend some time on house chores, working out an issue. I also spent a substantially increased amount of time on the other activities bucket.'),
  ('2021-04-01','I worked at a slightly higher pace than the previous month. I spent a higher amount of time on other activities than usual, though still less than the previous month. Time on personal finances and on house chores was down from previuos months.'),
  ('2021-05-01','I continued working at a similar level as previous months. I spent more time on personal chores, including getting my first COVID vaccine dose, outside trips for laundry, and disposal of stuff.'),
  ('2021-06-01','I experimentally started reducing my work hours this month, getting a little ahead of a planned reduction officially started in July (my idea was to reduce in June and work at the full number of hours for a few weeks in July and August to compensate). I also significantly increased my time spent on personal projects. I spent some more time on personal chores, including getting a COVID vaccine.'),
  ('2021-07-01','After experimentally reducing my hours in June, I returned back to close to the full level of hours for July to wrap up various threads of work before being able to reduce my hours for the longer term.'),
  ('2021-08-01','I almost returned to reduced (75%) work hours as originally hoped, though I worked a little over the expected number of hours. However, I could spend very little of that time on personal projects; I spent a lot of time on house chores (housemate search) as well as some other activities.'),
  ('2021-09-01','I worked at the reduced hours (75%). I also spent a lot of time on personal projects with the freed-up time. I spent a little bit of time ironing out a house issue.'),
  ('2021-10-01','I worked a bit lower even compared to my reduced hours (75%). I also spent an increased amount of time on personal projects. I spent a fair amount of time on other activities.'),
  ('2021-11-01','I worked at the reduced hours (75%). My overall composition across various kinds of non-work activities matched what I would generally like it to be.');
