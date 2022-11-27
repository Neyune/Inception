all:
	docker-compose -f srcs/docker-compose.yml -p inception up --build
re: all

clean:
	docker-compose -f srcs/docker-compose.yml stop
.PHONY: all re clean
