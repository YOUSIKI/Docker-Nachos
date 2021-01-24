ARG UPSTREAM_IMAGE=i386/ubuntu:bionic

FROM ${UPSTREAM_IMAGE}

ARG DOCKER_SHELL=bash
ARG DOCKER_MIRROR

# change apt mirror
ADD scripts /scripts
ADD mirrors /mirrors
RUN /scripts/apt-mirror.sh

# install compiler
RUN apt update && \
    apt install -y ed csh gdb build-essential && \
    apt clean -y && \
    rm -rf /var/lib/apt/lists/*

# install shell
RUN /scripts/install-shell.sh

# change workspace
WORKDIR /workspace

ENTRYPOINT [ "/bin/myshell" ]
