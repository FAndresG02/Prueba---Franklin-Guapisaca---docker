FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \ apt-get install -y nginx && \ rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
