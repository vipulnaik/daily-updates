import shared, connection

queries = [
    "select * from quarter_summaries where year > year(curdate());",

    "select * from quarter_summaries where year = year(curdate()) and 3 * quarter >= month(curdate());",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)

