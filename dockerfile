FROM  --platform=linux/arm64 node:21-alpine

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

CMD ["node", "bin/www"]

EXPOSE 3000