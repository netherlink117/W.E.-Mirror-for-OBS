FROM debian:latest
COPY . /thething
WORKDIR /thething
RUN apt update && apt upgrade -y
RUN apt install -y php curl
EXPOSE 9998
CMD [ "php", "-S", "0.0.0.0:9998" ]