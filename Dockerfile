# syntax=docker/dockerfile:1

FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt upgrade -y && apt dist-upgrade -y && apt full-upgrade -y && apt autoremove --purge -y && \
    apt install -yq python3.9 python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
RUN echo "alias python=python3.9" >> /root/.bashrc
RUN pip3 install ansible==5.2.0

CMD [ "ansible", "--version" ]
