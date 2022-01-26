# syntax=docker/dockerfile:1

FROM alpine:3.15.0

RUN apk update && apk add py3-pip ansible
RUN echo "alias python=python3.9" >> /root/.bashrc
RUN pip3 install ansible==5.1.0

CMD [ "ansible", "--version" ]
