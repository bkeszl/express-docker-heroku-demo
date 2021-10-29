FROM node:latest
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npx db-migrate up
CMD ["npm", "start"]