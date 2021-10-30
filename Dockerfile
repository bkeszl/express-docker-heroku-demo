FROM node:latest
WORKDIR /app
COPY package.json ./
ENV DATABASE_URL=mysql://d0p269o18dwinsh9:pt8jmxjobtvtnhtc@yvu4xahse0smimsc.chr7pe7iynqr.eu-west-1.rds.amazonaws.com:3306/e49p9gy4oeo934k5
RUN npm install
COPY . .
RUN npx db-migrate up
CMD ["npm", "start"]