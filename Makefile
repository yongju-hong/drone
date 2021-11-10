
all: build

build:
	go build -ldflags '-extldflags "-static"' -o release/drone-server github.com/drone/drone/cmd/drone-server && sudo docker build --rm -t dreg.be/devops/drone/drone:0.8.10 . 
    
push:
	sudo docker push dreg.be/devops/drone/drone:0.8.10
