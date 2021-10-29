FROM node:latest
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npx db-migrate up --env heroku
CMD ["npm", "start"]