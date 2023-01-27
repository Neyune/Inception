all:
	docker-compose -f srcs/docker-compose.yml -p inception up --build -d
re: fclean all 

clean:
	docker ps -aq | xargs docker stop | xargs docker rm
	docker-compose -f srcs/docker-compose.yml down --rmi all
fclean: clean
	docker system prune -fa
	docker volume rm inception_mariadb_volume

.PHONY: all re clean fclean
