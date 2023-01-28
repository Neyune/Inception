all:
	docker-compose -f srcs/docker-compose.yml -p inception up --build -d
	# docker-compose -f srcs/docker-compose.yml --env-file srcs/.env -p inception up --build -d
re: fclean all 

clean:
	docker ps -aq | xargs docker stop | xargs docker rm
	docker-compose -f srcs/docker-compose.yml down --rmi all
fclean: clean
	docker system prune -fa
	docker volume rm inception_wordpress_volume inception_mariadb_volume
fcleanv: fclean 
		rm -rf /home/lara/data/mariadb_volume/* /home/lara/data/wordpress_volume/*

.PHONY: all re clean fclean fcleanv
