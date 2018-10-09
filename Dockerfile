# Specify BROKER_URL and QUEUE when running

FROM rahulgautam/r-java:latest
MAINTAINER Rahul Gautam <rahul@itsmychoice.in>

RUN apt-get update && \
    apt-get install -y curl ca-certificates amqp-tools python \
       --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/work
WORKDIR /opt/work
COPY . /opt/work/
ENTRYPOINT /bin/bash -c "while :; do sleep 100;done;"
#ENTRYPOINT /usr/bin/amqp-consume --url=$BROKER_URL -q $QUEUE -c 1 cat | ./Main.R `xargs`
