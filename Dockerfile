# specify the node base image with your desired version node:<version>
FROM node:6

WORKDIR /node-docker

COPY package.json /node-docker

RUN npm install

COPY . /node-docker

# replace this with your application's default port
EXPOSE 5000

CMD ["npm", "start"]