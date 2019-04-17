DOCKERUSER=zmar
DOCKERNAME=arduino-docker
DOCKERTAG=$(DOCKERUSER)/$(DOCKERNAME)

image:
	docker build -t $(DOCKERTAG) .

push: image
	docker push $(DOCKERTAG)
