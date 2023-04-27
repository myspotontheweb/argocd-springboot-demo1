REGISTRY     = c8n.io
REPOSITORY   = myspotontheweb/springboot-demo1
TAG          = sha-$(shell git log -1 --format=%h)
IMAGE_SHA    = $(REGISTRY)/$(REPOSITORY):$(TAG)
IMAGE_LATEST = $(REGISTRY)/$(REPOSITORY):latest

build-java:
	./mvnw clean package

build-image:
	docker buildx build -t $(IMAGE_SHA) -t $(IMAGE_LATEST) . --push

helm-test:
	helm template rel1 chart --set image.tag=$(TAG)
