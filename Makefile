MYSQL_ARGS=
DATABASE=updates
MYSQL_READONLY_USERNAME=
MYSQL_READONLY_USER_PASSWORD=

.PHONY: init
init:
	mysql $(MYSQL_ARGS) -e "create database if not exists $(DATABASE);"

.PHONY: create_readonly_user
	mysql $(MYSQL_ARGS) -e "create user $(MYSQL_READONLY_USERNAME) identified by '$(MYSQL_READONLY_USER_PASSWORD)';"
	mysql $(MYSQL_ARGS) -e "grant select on $(DATABASE).* to $(MYSQL_READONLY_USERNAME);"

.PHONY: reset
reset:
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists day_summaries;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists week_summaries;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists month_summaries;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists year_summaries;"


.PHONY: read
read:
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/day_summaries_schema.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/day_summaries_2018-08-10-to-2020-07-15.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/day_summaries_2020-07-16-to-2022-02-13.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/day_summaries_2022-02-14-to-2023-05-28.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/day_summaries_2023-05-29-to-2024-12-29.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/day_summaries_2024-12-30-to-present.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/week_summaries.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/month_summaries.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/year_summaries.sql
	python3 python/day_summaries_verification_queries.py

.PHONY: fetch_table_sorting
fetch_table_sorting:
	curl -Lo access-portal/jquery-3.7.1.min.js \
		'https://code.jquery.com/jquery-3.7.1.min.js'
	curl -Lo access-portal/jquery.tablesorter.js \
		'https://github.com/christianbach/tablesorter/raw/master/jquery.tablesorter.js'
	curl -Lo access-portal/style.css \
		'https://raw.githubusercontent.com/christianbach/tablesorter/master/themes/blue/style.css'
	curl -Lo access-portal/bg.gif \
		'https://github.com/christianbach/tablesorter/raw/master/themes/blue/bg.gif'
	curl -Lo access-portal/asc.gif \
		'https://github.com/christianbach/tablesorter/raw/master/themes/blue/asc.gif'
	curl -Lo access-portal/desc.gif \
		'https://github.com/christianbach/tablesorter/raw/master/themes/blue/desc.gif'

.PHONY: clean_table_sorting
clean_table_sorting:
	rm -f access-portal/jquery-*.min.js
	rm -f access-portal/jquery.tablesorter.js
	rm -f access-portal/style.css
	rm -f access-portal/bg.gif
	rm -f access-portal/asc.gif
	rm -f access-portal/desc.gif

.PHONY: fetch_anchorjs
fetch_anchorjs:
	curl -Lo access-portal/anchor.min.js \
		'https://raw.githubusercontent.com/bryanbraun/anchorjs/master/anchor.min.js'

.PHONY: clean_anchorjs
clean_anchorjs:
	rm -f access-portal/anchor.min.js
