DOCKERCMD = docker
CONTAINER_NAME = stg_ansible
IMAGE_TAG = localhost/$(CONTAINER_NAME)

clean:
	- $(DOCKERCMD) container rm -f $(CONTAINER_NAME)
	- $(DOCKERCMD) image rm $(IMAGE_TAG)

.PHONY: image
image:
	$(DOCKERCMD) build --no-cache -t $(IMAGE_TAG) .

.PHONY: start
start:
	$(DOCKERCMD) run -it --name $(CONTAINER_NAME) $(IMAGE_TAG)

