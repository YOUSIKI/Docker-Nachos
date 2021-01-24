FROM i386/ubuntu:bionic
# install compiler and requirements
RUN apt update && \
    apt install -y ed csh gdb zsh git vim build-essential && \
    apt clean -y && \
    rm -rf /var/lib/apt/lists/*
# install oh-my-zsh
ADD ohmyz.sh /ohmyz.sh 
RUN chmod +x /ohmyz.sh && /ohmyz.sh
# change workspace
WORKDIR /workspace
# use zsh as default
ENTRYPOINT [ "/usr/bin/zsh" ]
