build:
	@docker build -t jonathanribas351/redis-7.2.4 .

run: build
	@docker run --network host --name redis -d jonathanribas351/redis-7.2.4:latest

bench:
	@docker run --network host -it --rm redis redis-benchmark -n 10000 -c 20|grep "per second" > results
	@../get_results.sh|tee -a bench_results

clean:
	@docker rm -f redis
	@rm -f results bench_results

all: build
