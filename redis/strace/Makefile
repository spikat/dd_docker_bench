build:
	@docker build -t jonathanribas351/redis-7.2.4-strace .

run: build
	@docker run --network host --cap-add=SYS_PTRACE --name redis-strace -d jonathanribas351/redis-7.2.4-strace:latest

bench:
	@docker run --network host -it --rm redis redis-benchmark -n 10000 -c 20|grep "per second" > results
	@../get_results.sh|tee -a bench_results

clean:
	@docker rm -f redis-strace
	@rm -f results

all: build
