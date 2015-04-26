# Synopsis

```
# start Pg server
docker run -v /var/run/postgresql --rm postgres:9.4

# connect with pgcli
docker run --volumes-from=pg_test --rm -it pgcli -d postgres -U postgres
```
