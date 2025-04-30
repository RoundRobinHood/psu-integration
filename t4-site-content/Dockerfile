FROM alpine:latest

RUN apk add --no-cache git

WORKDIR /usr/src/app
RUN git clone https://github.com/RoundRobinhood/t4-site-content.git .

FROM python:3.11-slim

RUN pip install --no-cache-dir mkdocs
RUN pip install --no-cache-dir mkdocs-material

WORKDIR /usr/src/app
COPY --from=0 /usr/src/app /usr/src/app
RUN mkdocs build

FROM nginx:alpine

COPY --from=1 /usr/src/app/site /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
