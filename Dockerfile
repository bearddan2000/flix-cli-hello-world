FROM openjdk:18-slim

ARG FLIX_VERSION=0.41.0

WORKDIR /workspace

RUN apt-get update

RUN apt-get install -y wget

WORKDIR /opt/flix

RUN wget https://github.com/flix/flix/releases/download/v${FLIX_VERSION}/flix.jar

WORKDIR /code

COPY bin .

CMD "./run.sh"