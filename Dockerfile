FROM nginx:1.21

RUN apt-get update && apt-get install -y \
    curl \
    git

COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
