import shared, connection

queries = [
    "select * from day_summaries where date >= curdate();",

    "select * from day_summaries where date < '2018-08-10';",

    "select * from day_summaries where minutes_spent_on_day_job_equator is not null and (date < '2022-02-14' or date > '2023-05-28');",

    "select date from day_summaries where (num_cpc_ltbcs = 0 or num_cpc_ltbcs >= 3) and date >= '2025-06-07' and notes is null;",

    "select date from day_summaries where screen_minutes_m1 < 300 and num_cpc_ltbcs = 0 and not (date between '2025-05-03' and '2025-06-06' /* India trip */);",

    "select date from day_summaries where screen_minutes_m1 > 720 and num_cpc_ltbcs >= 2;",

    "select date from day_summaries where minutes_spent_on_day_job_liftigniter_and_arena > screen_minutes_m1 and not (date in ('2024-06-03','2024-06-07') /* Portland travel days with travel-related offscreen time counted toward work */);",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)

