build:
	docker build -t jonathanribas351/redis-7.2.4-strace .

run: build
	docker run --network host --cap-add=SYS_PTRACE --name redis-strace -d jonathanribas351/redis-7.2.4-strace:latest

bench:
	docker run --network host -it --rm redis redis-benchmark

clean:
	docker rm -f redis-strace

all: build
