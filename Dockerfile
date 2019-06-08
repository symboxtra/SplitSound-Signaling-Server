FROM node:8-slim

LABEL maintainer="Symboxtra Software"
LABEL version="0.2.0"
LABEL description="Docker file for the SplitSound signaling server."

RUN mkdir -p /usr/src/
WORKDIR /usr/src/
COPY package.json package-lock.json /usr/src/

RUN npm install .

COPY . /usr/src/

EXPOSE 8080

CMD ["npm", "run", "start:docker"]
