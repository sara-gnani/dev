FROM ubuntu
RUN apt update -y
RUN apt install nginx -y
ADD build/ /var/www/html
CMD ["nginx", "-g", "daemon off;"]

