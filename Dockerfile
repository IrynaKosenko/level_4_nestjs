FROM node:16

WORKDIR /src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3003

CMD [ "npm", "run", "start:dev" ]