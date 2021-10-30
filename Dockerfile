FROM node:latest
WORKDIR /app
COPY package.json ./
ENV DATABASE_URL=${DATABASE_URL}
RUN npm install
COPY . .
RUN npx db-migrate up
CMD ["npm", "start"]
