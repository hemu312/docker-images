Hello, I am Hemant Kumar Meena. I share my Dockerfiles here, you can modify them according to your need or can pull prebuilt images from dockerhub.
You can also visit my dockerhub account to see all my container images.
https://hub.docker.com/u/hemu312

# Details about container images
## Fedora with systemd(fedora-init):
This is Fedora docker image with systemd. In lot of use cases we need to use services inside docker container. You can use it as base for images that need systemd working.

## Fedora with openssh-server(fedora-ssh):
Sometime we need container images which have ssh server so we can work remotely.For example you can use this image for creating isolated development environment with which can interact via ssh. You can use it with vscode remote development plugin. We are using public key authentication.
### How to copy ssh keys to this container:
I am using podman, these commands will also work on docker
1. Start container
If running first time
podman run -d -p 5555:22 hemu312/fedora-ssh:38
If container already exists
podman start ContainerId

1. Copy ssh keys
podman exec -it ContainerId /bin/bash
echo "Public Id" >> ~/.ssh/authorized_keys

Replace placeholder values of "Public Id" and "ContainerId" with actual values.
