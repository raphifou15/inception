NAME = inception
DOWN = down
PR = prune
RM_V = rmv

all: ${NAME}

${NAME}:
	if [ ! -d "/home/rkhelif/data" ]; then \
	mkdir /home/rkhelif/data; \
	fi
	if [ ! -d "/home/rkhelif/data/db" ]; then \
	mkdir /home/rkhelif/data/db; \
	fi
	if [ ! -d "/home/rkhelif/data/wp" ]; then \
	mkdir /home/rkhelif/data/wp; \
	fi
	$(docker ps | wc -l)
	if [ $(shell docker ps | wc -l) -ne $(shell echo "4") ]; then \
	docker-compose -f srcs/docker-compose.yml up --build; \
	else echo "le dockerfile tourne deja mon ami"; \
	fi

${DOWN}:
	docker-compose -f srcs/docker-compose.yml down

${PR}:
	docker system prune -a -f

${RM_V}:
	sudo rm -rf /home/rkhelif/data

clean: ${DOWN} ${PR}

fclean: clean ${RM_V}

