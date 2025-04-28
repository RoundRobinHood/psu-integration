FROM alpine:latest AS git-clone

RUN apk add --no-cache git

RUN git clone https://github.com/RoundRobinHood/psu-t3-site.git /usr/src/app

FROM nginx:alpine

COPY --from=git-clone /usr/src/app /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
