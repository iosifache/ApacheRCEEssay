FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl

COPY exploit.sh /root

ENTRYPOINT ["tail", "-f", "/dev/null"]