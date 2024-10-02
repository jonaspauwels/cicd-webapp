FROM node:20-alpine3.19

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install #--frozen-lockfile

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]