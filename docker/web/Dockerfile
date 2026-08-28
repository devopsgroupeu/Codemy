FROM nginx:1.27-alpine

ADD page /usr/share/nginx/html/
COPY logger.sh /scripts/logger.sh
COPY entrypoint.sh /scripts/entrypoint.sh

RUN chmod +x /scripts/logger.sh
RUN chmod +x /scripts/entrypoint.sh
RUN apt-get update && apt-get install bc

EXPOSE 80

ENTRYPOINT ["/bin/sh","-c","sleep 5000"]

