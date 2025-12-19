FROM ghcr.io/actions/actions-runner:2.328.0

ARG DEBIAN_FRONTEND=noninteractive
RUN sudo apt-get clean && sudo apt-get update && sudo apt-get install -y --no-install-recommends \
    ca-certificates curl gnupg

# install docker for docker-in-docker
# use volume to leverage overlay2 in dind docker, see more in https://stackoverflow.com/questions/67953609/overlay2-driver-not-supported
RUN sudo curl -sSL https://get.docker.com/ | sh
VOLUME /var/lib/docker

