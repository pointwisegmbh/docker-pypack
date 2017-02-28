DOCKER = docker
REPO = docker.locarta.co
NAME = pypack

GIT_VERSION := $(shell git describe --abbrev=7 --dirty --always --tags)

TAG = $(GIT_VERSION)

docker:
	$(DOCKER) build -t $(NAME) .

build:
	 make docker

push:
	$(DOCKER) push $(REPO)/$(NAME):latest
	$(DOCKER) push $(REPO)/$(NAME):$(TAG)

tag:
	$(DOCKER) tag $(NAME) $(REPO)/$(NAME):latest
	$(DOCKER) tag $(NAME) $(REPO)/$(NAME):$(TAG)
