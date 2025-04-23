# Use official NodeJS base image
FROM node:18

RUN npm install -g --unsafe-perm node-red

RUN mkdir -p /data
WORKDIR /data

RUN git clone https://github.com/RoundRobinHood/psu-node-red.git .

RUN npm install node-red-dashboard node-red-contrib-whatsapp-cmb

RUN addgroup --system nodered && adduser --system --ingroup nodered nodered

RUN chown -R nodered:nodered /data

USER nodered

EXPOSE 1880

CMD ["node-red", "--userDir", "/data"]
