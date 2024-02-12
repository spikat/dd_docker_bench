build:
	@docker build -t jonathanribas351/redis-7.2.4-datadog .

run: build
	@docker run --network host --cap-add=SYS_PTRACE --name redis-datadog -d jonathanribas351/redis-7.2.4-datadog:latest

bench:
	@docker run --network host -it --rm redis redis-benchmark -n 10000 -c 20|grep "per second" > results
	@../get_results.sh

clean:
	@docker rm -f redis-datadog
	@rm -f results

all: build
