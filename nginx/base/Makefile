build:
	@docker build -t jonathanribas351/nginx-1.25.3 .

run: build
	@docker run --network host --name nginx -d jonathanribas351/nginx-1.25.3:latest

bench:
	@docker run --network host -it --rm httpd ab -c 100 -n 10000 "http://localhost/"|grep "per second"|grep -Eo '[0-9\.]+'|sed 's/\.[0-9]*//'|tee -a bench_results|tee -a bench_results

clean:
	@docker rm -f nginx bench_results
	@rm -f bench_results

all: build
