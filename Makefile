VERSION=1.2.0-rc1
IMAGE_TAG=iconloop/tbears:$(VERSION)

build:
	docker build -t $(IMAGE_TAG) .

run:
	docker run -it -p 9000:9000 --rm $(IMAGE_TAG)

shell:
	docker run -it -p 9000:9000 --rm --entrypoint /bin/bash $(IMAGE_TAG)
