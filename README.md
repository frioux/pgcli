# Synopsis

```
# start Pg server
docker run -v /var/run/postgresql --rm postgres:9.4

# connect with pgcli
docker run --volumes-from=pg_test --rm -it pgcli -d postgres -U postgres

# or connect over a TCP with password:
docker run --rm --link some-postgres:db -it \
   --entrypoint=/bin/sh \
   frew/pgcli -c \
   'export PGPASSWORD=$$DB_ENV_POSTGRES_PASSWORD; \
   exec pgcli -w -d postgres -U postgres -h $$DB_PORT_5432_TCP_ADDR'
```
