nanosql
===

Edit slices of SQL tables in nano.  Just specify a table and any filters
you want to apply, and the table will show up in nano in csv format.
Any edits you make will be applied back to the original source.

## Install

To edit local Sqlite databases, just do:

```
pip install nanosql
```

For PostgreSQL or MySQL support, add `catsql[postgres]` or `catsql[mysql]`:

```
pip install nanosql catsql[mysql]
pip install nanosql catsql[postgres]
```

For other databases, just install the appropriate [SQLAlchemy dialect](http://docs.sqlalchemy.org/en/latest/dialects/index.html).

## Use

```
nanosql test.sqlite3
nanosql test.sqlite3 --table users
nanosql postgres[ql]://user:pass@host/db --table users
nanosql mysql://user:pass@host/db --table users
nanosql test.sqlite3 --table users --grep paul
nanosql test.sqlite3 --table comments --sql "length(txt) < 40"
```

For all filters, see https://github.com/paulfitz/catsql#examples

