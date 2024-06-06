DOCKER_IMAGE=alimanwar/itms-alpine
DOCKER_IMAGE_TEST=alimanwar/itms-alpine-test
VERSION=1.0

docker_build:
	docker build -t $(DOCKER_IMAGE) .

docker_push:
	docker push $(DOCKER_IMAGE):$(VERSION)

docker_test_build:
	docker build -t $(DOCKER_IMAGE_TEST) -f Dockerfile.test .

docker_test_bash:
	docker run -it --rm $(DOCKER_IMAGE_TEST) bash
