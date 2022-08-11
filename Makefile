NAME	:= inception
SRCS	:= ./srcs/docker-compose.yaml

all: $(NAME)

$(NAME): $(SRCS)
	@docker system prune -f
	@docker-compose -f $(SRCS) up --build

clean:
	@docker-compose -f $(SRCS) down

