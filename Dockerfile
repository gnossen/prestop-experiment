FROM ubuntu:focal

RUN apt-get update -y && \
	apt-get install -y moreutils

COPY main.sh /
COPY prestop.sh /

CMD ["/main.sh"]
