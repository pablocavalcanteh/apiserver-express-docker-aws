FROM node:16

WORKDIR /usr/src/app

COPY package.json index.js ./

# Needless, can remove it
RUN npm set strict-ssl false / 

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]