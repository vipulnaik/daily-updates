create table month_summaries(
  `month_start_date` date primary key not null,
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into month_summaries(month_start_date, notes) values
  ('2019-09-01','This month, at LiftIgniter (my job) we made a new hire and I put in a decent chunk of effort in training the person and planning a transfer of some responsibilities. I also got in an accident https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-09-10-traffic-accident.md that didn''t cause me any serious injury but was still disconcerting. I did take one weekday off work (Friday 2019-09-13) and spent some time this month working on the donations list website (DLW).'),
  ('2019-10-01','This month was a somewhat busier month at LiftIgniter (my job) than previous months because of a spike in effort related to onboarding a recently hired employee, and transitioning more of my workload to other people. I also spent the time documenting stuff so that others could do it effectively. I expected some of these efforts to start paying off from the next month onward.'),
  ('2019-11-01','I had been anticipating that this month would be the time when things would be fairly settled at LiftIgniter (my job), since hiring and onboarding plans from previous months had proceeded reasonably successfully. However, this also turned out to be the time that we started getting into serious acquisition talks, as well as the month where the manager of the engineering team would announce his departure. It therefore ended up not quite being the respite I had hoped it would be. I did take out some time to work on the donations list website (DLW).'),
  ('2019-12-01','The month was somewhat stressful due to the changes afoot: LiftIgniter was in talks with potential acquirers, and also the manager of the engineering team had just left, so I had temporary responsibility as a manager of the company in this transient state. However, I was able to get a little time off at the end of the month to do some personal chores, including cleaning out a bunch of my stuff (the holidays at the end of the month account for the reduced work hours compared to previous months). Maven was one of the suitors at the time, and the possibility of moving to Seattle was raised, so I started thinking about downsizing in preparation for the move. I also spent some time working on the donations list website (DLW).'),
  ('2020-01-01','This was a fairly tumultous month: LiftIgniter was in acquisition talks with a company and there was a lot of due diligence work needed; the deal would ultimately fall through the next month. It was also stressful due to the departure of one of my work colleagues. The lower average this month than in previous months was mostly due to the holidays at the beginning of the month.'),
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
  ('2021-04-01','I worked at a slightly higher pace than the previous month. I spent a higher amount of time on other activities than usual, though still less than the previous month. Time on personal finances and on house chores was down from previous months.'),
  ('2021-05-01','I continued working at a similar level as previous months. I spent more time on personal chores, including getting my first COVID vaccine dose, outside trips for laundry, and disposal of stuff.'),
  ('2021-06-01','I experimentally started reducing my work hours this month, getting a little ahead of a planned reduction officially started in July (my idea was to reduce in June and work at the full number of hours for a few weeks in July and August to compensate). I also significantly increased my time spent on personal projects. I spent some more time on personal chores, including getting a COVID vaccine.'),
  ('2021-07-01','After experimentally reducing my hours in June, I returned back to close to the full level of hours for July to wrap up various threads of work before being able to reduce my hours for the longer term.'),
  ('2021-08-01','I almost returned to reduced (75%) work hours as originally hoped, though I worked a little over the expected number of hours. However, I could spend very little of that time on personal projects; I spent a lot of time on house chores (housemate search) as well as some other activities.'),
  ('2021-09-01','I worked at the reduced hours (75%). I also spent a lot of time on personal projects with the freed-up time. I spent a little bit of time ironing out a house issue.'),
  ('2021-10-01','I worked a bit lower even compared to my reduced hours (75%). I also spent an increased amount of time on personal projects. I spent a fair amount of time on other activities.'),
  ('2021-11-01','I worked at the reduced hours (75%). My overall composition across various kinds of non-work activities matched what I would generally like it to be.'),
  ('2021-12-01','My average work hours this month were lower than my reduced hours (they were at around 75% even relative to the original reduced work hours). Most of this was related to a slower holiday period including a few explicit holidays. I spent a pretty large amount of time per week on personal projects, and also a moderately large amount on "other activities"; the rest of my time allocation was fairly normal.'),
  ('2022-01-01','My work hours returned to their pre-holiday levels after a lull in December 2021; however, the average hides a significant amount of variation within the month, with a significant increase in work hours later in the month. I spent way more time on "other activities" than a typical month, and this cut into my time for personal projects. I also spent less time than usual on personal chores, mostly because I was more successful at multiplexing these against other things.'),
  ('2022-02-01','My work hours continued at levels similar to January. Also similar to January, I continued to spend a lot of time on "other activities" though this amount did partly revert to normal. Starting 2022-02-14, I started recording separately my time spent on preparatory work for Equator. As I started planning a housing transition, my time on "house chores" increased. Wrapping up taxes also led to more time than usual on "personal finances". My reduced ability to multiplex meal prep with other things led to more time on "personal chores" than January, though the time was comparable to previous months. With all this, "personal projects" suffered the most.'),
  ('2022-03-01','My work hours were lower than in the past couple of months, though still higher than holiday-filled December. Reasons for the lower-than-usual work hours were increased time on house chores (including apartment search), more time on preparatory work for my upcoming part-time job at Equator, and slightly more time on personal projects.'),
  ('2022-04-01','The highlight of the month was my house move, which ate up into a lot of the time I''d normally spend in the other buckets. In addition, getting a new phone and computer and some associated setup took some time. I also started part-time work at Equator on 2022-04-19, leading to a redistribution of my work hours from LiftIgniter / Arena Group to Equator.'),
  ('2022-05-01','The first week of the month was spent on house chores related to the move-out from the old place; this accounts for the high average number of hours on house chores in the month. Through the month, I reduced my time spent on The Arena Group and increased my time spent on Equator.'),
  ('2022-06-01','The distribution of time across buckets this month closely matched what I was hoping for, though a few weeks were off. The main area where I ended up spending more time than I''d hoped was personal chores, though much of it was one-off work (dentist trip, loose ends script, some trips for picking up supplies). I expect that the reduced time on personal chores in future months will mostly benefit personal projects and Equator work.'),
  ('2022-07-01','The distribution of time across buckets this month was a little off from what I hoped: more time on Arena Group work and less time on Equator work than I''d like. The greater amount of time on personal projects was a mixed blessing; most of it was for devops streamlining that was long overdue.'),
  ('2022-08-01','This month was heavy with Arena Group transition work; as a result, I spent a little less time on Equator than I''d ideally like, but it was within the range of expectations given the time cost of transition work. I also spent a decent amount of time on personal projects: more than I had expected to be able to have given the increased day job work, but less than I''d like to spend in steady state once the transition work is over. I was able to reduce my time on personal chores relative to the high levels of the previous month, reflecting an increasing degree of settling in to my new place.');
