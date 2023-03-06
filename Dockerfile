FROM ubuntu:latest
EXPOSE 9090
ARG CLASH_URL
ENV CLASH_URL $CLASH_URL
COPY . /home/clash-for-linux
WORKDIR /home/clash-for-linux
RUN apt-get update && apt-get install -y curl
RUN rm -rf .env
CMD sh -c "./start.sh && tail -f /dev/null"