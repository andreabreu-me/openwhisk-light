#FROM node:6-alpine
FROM resin/qemux86-64-node:slim
RUN apt-get update && apt-get install -y git ssh
RUN npm install git+https://git@github.com/kpavel/openwhisk-local.git && npm cache clean && rm -rf /tmp/*
CMD ["sh", "-c", "cd /node_modules/openwhisk-local; npm start"]
