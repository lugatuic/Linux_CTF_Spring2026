FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    john \
    vim \
    nano \
    curl \
    wget \
    sudo \
    man \
    file \
    procps \
    python3 \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash hacker \
    && echo "hacker:hacker" | chpasswd

RUN mkdir -p /challenge
RUN chown root:root /challenge && chmod 755 /challenge

USER hacker
WORKDIR /home/hacker
CMD ["/bin/bash"]
