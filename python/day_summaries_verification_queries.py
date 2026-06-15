import shared, connection

queries = [
    "select * from day_summaries where date >= curdate();",

    "select * from day_summaries where date < '2018-08-10';",

    "select * from day_summaries where minutes_spent_on_day_job_equator is not null and (date < '2022-02-14' or date > '2023-05-28');",

    "select date from day_summaries where (num_cpc_ltbcs = 0 or num_cpc_ltbcs >= 3) and date >= '2025-06-07' and notes is null;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)

