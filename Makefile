IMAGE_TAG=tbears-server

build:
	docker build -t $(IMAGE_TAG) .
run:
	docker run -it -p 9000:9000 --rm $(IMAGE_TAG)
shell:
	docker run -it -p 9000:9000 --rm --entrypoint /bin/bash $(IMAGE_TAG)
