import shared, connection

queries = [
    "select * from year_summaries where year > year(curdate());",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)

