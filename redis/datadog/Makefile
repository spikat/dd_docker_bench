build:
	docker build -t jonathanribas351/redis-7.2.4-datadog .

run: build
	docker run --network host --cap-add=SYS_PTRACE --name redis-datadog -d jonathanribas351/redis-7.2.4-datadog:latest

bench:
	docker run --network host -it --rm redis redis-benchmark

clean:
	docker rm -f redis-datadog

all: build
