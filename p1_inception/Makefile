all:
	docker-compose -f srcs/docker-compose.yml -p inception up --build -d
re: all

clean:
	docker ps -aq | xargs docker stop | xargs docker rm
	docker-compose -f srcs/docker-compose.yml down --rmi all
.PHONY: all re clean
