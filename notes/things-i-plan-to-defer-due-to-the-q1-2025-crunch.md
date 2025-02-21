# Things I plan to defer due to the Q1 2025 crunch

As I mention in my [standing
plan](../standing-plan-for-the-next-few-months.md), I expect to be
more busy than usual with day job work for the period of 2025-01-27 to
2025-04-20. In addition, particularly during the coldest winter
months, I also have an increased cyclic personal chores load and spend
more time sleeping, further squeezing my time. As a result of this,
there are a few things I plan to defer to the period of May and June
of 2025. Deferring these comes with some costs and risks, and some
need for provisional steps to minimize those risks. I document these
below.

## General philosophy

### Defer downstream processing, not raw recording

By "raw recording" I mean capturing raw data (whether my own logging
of events that happened, or downloading CSVs or PDFs or webpages). Raw
recording is time-sensitive; if I don't do it, I might lose access to
the information forever.

In contrast, "downstream processing" -- such as writing notes on the
data, organizing/arranging the data, etc., can be done later, since
it's a function of the raw records.

### Continue to do hands-off POCS to learn stuff while being very disciplined about the use of hands-on computer time

The increased cyclic personal chores load actually gives me more "free
time" to listen to audio and watch video, which gives me more time for
passive optional cognitive stimulation (POCS) (see
https://github.com/vipulnaik/diet-exercise-health/blob/master/best-practices/best-practices-around-exertion-and-stimulation.md
for the jargon). In particular, I have time to passively listen to and
watch videos on a number of health topics.

The portion of my time that is more scarce is hands-on computer time
-- time that I have where I am seated in front of the computer and my
hands are free to use.

So, I can continue to set an ambitious agenda for POCS, while being
very restricted in how I spend my hands-on computer time. There is an
important catch, namely that I find it hard to hold too much
information in my head securely without writing or organizing it at
least somewhat. This means that there would be areas where I engage in
POCS and saturate what I can learn until I can spend hands-on computer
time writing, organizing, and testing my knowledge.

### Try to reduce load by skipping or reducing frequency for periodic tasks

In addition to deferring some things, I also try to reduce my load by
skipping some periodic tasks and reducing frequency for others. I
adopt a similar philosophy: for the tasks that involve getting raw
records, I try to keep the frequency that is enough so that I have a
decent time series to look at later. On the other hand, for some
tasks, like cleaning, reducing the frequency helps me by reducing my
total time spent (as long as I still clean out stubborn stains
quickly).

## Things that I would normally do in Q1 2025 that I am deferring to May/June 2025

### End-of-2024 finances (excluding US tax calculations)

#### What I normally do

I normally try to do the finances for the end of a year around
December of that year and January of the next year. This work on
finances gives me clarity on how much I've spent in various expense
categories, and helps me with a financial outlook for the future.

This is separate from the end-of-month balances calculation that I
continue to do (albeit with a bit of delay from the usual each
month). This is a once-a-year process of making sure I have
comprehensively entered all nontrivial expenses of the year and
reconciling my expenses with the balances and tax calculations.

This is also separate from the calculations specifically for 2024 US
taxes. Although (as of 2025-02-20) I am delayed with doing these
calculations, I still plan to finish them roughly as planned by
2025-04-20 (I anyway normally defer the final filing to May 2025 or
later). So essentially I plan to "catch up" with my backlog between
2025-02-20 and 2025-04-20.

#### Why I am deferring

My overall financial situation is relatively stable, and I don't
expect there to be many immediate financial decisions to make until
the end of Q2 2025 that would be meaningfully affected by finishing
these calculations sooner (partly because I'm too busy to make life
changes that would entail making such financial decisions). Thus, this
work is not decision-relevant for the most part.

#### How much time I save

I estimate I am saving somewhere around 4 to 8 hours of personal
finances work by deferring this. While it's not a lot of time under
ordinary circumstances, it is a lot in my current time-constrained
situation.

Also, some of these financial calculations lead to more open-ended
refactoring/restructuring ideas. I ideally want to do the calculation
work at a time when I have a bit more flexibility to pick up and
execute on those ideas.

#### How I am derisking the deferral

##### Download completed for raw CSVs

This follows the principle of prioritizing raw recording while
deferring downstream processing.

One risk of deferring is that the raw data for various accounts
(banks, credit cards, investment accounts) is held for a limited
moving window, that's generally between 1 and 2 years (generally about
18 months).

I removed most of this risk by doing all the dowloads of raw CSVs on
2025-01-03. I did another sanity check on 2025-02-20 comparing the
CSVs for 2023 and 2024 and confirming that I had all the 2024 files
corresponding to the 2023 files. I also eyeballed the contents of the
2024 files and made sure they matched the expectations.

##### Provisional heuristics for other expenses -- assume the upper limit of the range I might decide on

For a few expense categories, I may need to make decisions that would
ideally be informed by having done the 2024 analysis. In such cases, I
will follow these heuristics:

* If I currently think that my budget for the category will be between
  A and B, use B as my guidance.

* In total, until I do the end-of-2024 finances, aim to not spend more
  than $500 over and above what I could have spent if A were my
  guidance. (Note that B - A may be well over $500/year -- what's
  important is the absolute extra amount I spend by that cutoff date).

### Data entry for 2025-01-22 blood tests and any additional medical tests I get done

#### What I normally do

I normally take the following actions in response to getting test
results for blood tests or other medical tests:

* I do research on the meaning of the results (particularly for new
  tests that I did not research much before getting the test done)

* I enter the data in https://github.com/vipulnaik/diet-exercise-health/blob/master/sql/test_results.sql

* I update
  https://github.com/vipulnaik/diet-exercise-health/blob/master/profile-information/health-profile.md
  to reflect the new results (not every individual test will be
  included). In some cases, the update just means adding in a new
  reading in an existing section (and maybe removing a much older
  reading). In other cases, it may be a new test, so I might need to
  reword or expand a section to include it.

* I contemplate other followup actions, including repeat testing,
  testing for other related things, etc. Some of the outcomes of these
  decisions are reflected in
  https://github.com/vipulnaik/diet-exercise-health/blob/master/profile-information/health-profile.md
  but others may only be needed in the file for the next blood test
  plans.

#### Why I am deferring

The process is fairly intensive -- the raw data entry itself can take
1-2 hours, and particularly when there are new tests, updating the
health profile can also take time.

I have already downloaded the report PDF and backed it up in multiple
ways, so "raw recording" is done, and I can defer "downstream
processing" to later when I have more time.

#### How much time I save

The total time saved is probably on the order of 4 to 8 hours.

#### How I am derisking the deferral

##### Download of PDF report (takes care of "raw recording")

I've downloaded the PDF report and saved it to a few different
places. In addition, I continue to have online access to LabCorp where
the results are also displayed online.

##### Execution of POCS parts

As mentioned in the General philosophy section, I continue to have
time to watch and listen to videos; what I am lacking is hands-on
computer time. So, I'm using the time I do have to learn more about my
blood test results, particularly for the tests that are new. What I am
lacking is the time to consolidate the information.

By taking the time to learn, even if I can't consolidate, I get at
least part of the benefit, in particular identifying any action items
I can take immediately, as well as any testing I'd like to repeat.

##### Followup testing

Ideally, I'd have completed a full analysis before booking my next
round of blood tests. But that won't happen. This may mean that I end
up getting a few tests that may not make sense to do, and I may miss
out of a few tests I would have done if I had done a full review.

I expect that the excess testing would be less than $100, and even
that excess testing would convey some useful value. So, I'm okay with
taking that risk.

As for tests I should do but miss, I expect that I will be able to do
them in June or July 2025. I don't expect huge repercussions from
doing the test a few months later (for the tests where frequent data
point matter, I am already erring on the side of getting the tests).

### Timelines wiki periodic timeline updates

I have a few timelines listed on my [user
page](https://timelines.issarice.com/wiki/User:Vipul) that I was
hoping to keep updated. One of them, the timeline of AI safety, has
had an update due since October 2024. I was also planning to put more
timelines in that table.

This will have to wait till May or June of 2025.

### Other personal proejcts stuff

This includes work on subject wikis and the donations list website. I
have suspended till May 2025 all work here beyond a few items that
affect other people; for those items, I hope to finish them in March 2025.

## Mini-projects that I may have picked up in Q1 2025 if there were time, that I will likely do in May or June of 2025 (or later)

### Food portal

I want a more systematic way of looking at my food consumption by
month. My current verification queries setup, while good enough, has
limitations.

### Processing scripts for Slack self-chat logs

I use Slack self-chat logs to record timings of, and other key metrics
for, my daily activities, including meals, exercise, and sleep. I'm
following a lightweight but moderately consistent format, and it would
be good to have scripts to process the logs into computable data.
