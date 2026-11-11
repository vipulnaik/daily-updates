import shared, connection

queries = [
    "select * from month_summaries where month_end_date >= curdate();",

    "select * from month_summaries where day(month_start_date) != 1;",

    "select * from month_summaries where month_end_date != last_day(month_start_date);",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)

