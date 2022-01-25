# syntax=docker/dockerfile:1

FROM alpine:latest

RUN apk update && apk add py3-pip ansible
RUN echo "alias python=python3.9" >> /root/.bashrc
RUN pip3 install ansible

CMD [ "ansible", "--version" ]
