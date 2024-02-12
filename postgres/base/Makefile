build:
	@docker build -t jonathanribas351/postresql-16 .

run: build
	@docker run --network host --name postgres -e POSTGRES_PASSWORD=pass -d jonathanribas351/postresql-16:latest

prep:
	@docker run --network host -it --rm postgres psql -h 127.0.0.1 -p 5432 -U postgres -d postgres -c "create database benchmark;"
	@docker run --network host -it --rm postgres pgbench -i -s 50 benchmark -h 127.0.0.1 -p 5432 -U postgres
	@touch prep

bench: prep
	@docker run --network host -it --rm postgres pgbench -c 10 -j 2 -t 1000 benchmark -h 127.0.0.1 -p 5432 -U postgres|grep tps|cut -d" " -f 3|sed 's/\.[0-9]*//'|tee -a bench_results

clean:
	@docker rm -f postgres
	@rm -f prep bench_results

all: build
