# Use official NodeJS base image
FROM node:18

RUN npm install -g --unsafe-perm node-red

RUN mkdir -p /data
WORKDIR /data

RUN rm -rf /data/*

RUN git clone https://github.com/RoundRobinHood/psu-node-red.git .
RUN npm install node-red-dashboard node-red-contrib-whatsapp-cmb

# NB: defaults backup to bypass volume override if the mounted volume for run-time is empty
RUN cp -r /data /defaults

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 1880
CMD ["node-red", "--userDir", "/data"]
