FROM node:latest
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN chmod +x ./startup.sh
CMD ["./startup.sh"]
