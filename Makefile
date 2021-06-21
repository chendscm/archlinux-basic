emacs ?= emacs

BASEDIR := $(shell pwd)

build: 
	cd $(BASEDIR)
	sudo DOCKER_BUILDKIT=1 docker build -t chendscm/basic --secret id=ssh_id,src=$(pwd)/id_rsa .

.PHONY: build