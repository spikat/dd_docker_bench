build:
	@docker build -t jonathanribas351/nginx-1.25.3-strace .

run: build
	@docker run --cap-add=SYS_PTRACE --network host --name nginx.strace -d jonathanribas351/nginx-1.25.3-strace:latest

bench:
	@docker run --network host -it --rm httpd ab -c 100 -n 10000 "http://localhost/"|grep "per second"|grep -Eo '[0-9\.]+'|sed 's/\.[0-9]*//'|tee -a bench_results

clean:
	@docker rm -f nginx.strace
	@rm -f bench_results

all: build
