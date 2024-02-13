NAME=elasticsearch

build:
	@docker build -t jonathanribas351/$(NAME) .

run: build
	@docker run --cap-add=SYS_PTRACE --network host -e "discovery.type=single-node" --name $(NAME) -d jonathanribas351/$(NAME):latest

clean:
	@docker rm -f $(NAME)

all: build
