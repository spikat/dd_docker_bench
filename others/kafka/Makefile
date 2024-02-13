NAME=kafka

build:
	@docker build -t jonathanribas351/$(NAME) .

run: build
	@docker run --cap-add=SYS_PTRACE --network host --name $(NAME) -e "KAFKA_CFG_LISTENER_SECURITY_PROTOCOL_MAP=CONTROLLER:PLAINTEXT,PLAINTEXT:PLAINTEXT" -e "KAFKA_CFG_PROCESS_ROLES=broker" -e "KAFKA_CFG_NODE_ID=42" -e "KAFKA_KRAFT_CLUSTER_ID=lalalilalolalalilaloli" -e "ALLOW_PLAINTEXT_LISTENER=yes" -e "KAFKA_CFG_CONTROLLER_QUORUM_VOTERS=0@kafka:9093" -e "KAFKA_CFG_CONTROLLER_LISTENER_NAMES=CONTROLLER" -d jonathanribas351/$(NAME):latest

clean:
	@docker rm -f $(NAME)

all: build
