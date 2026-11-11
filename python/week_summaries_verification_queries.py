import shared, connection

queries = [
    "select * from week_summaries where datediff(curdate(), week_start_date) < 7;",

    "select * from week_summaries where dayofweek(week_start_date) != 2;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)

