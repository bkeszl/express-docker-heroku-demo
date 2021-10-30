FROM node:latest
WORKDIR /app
COPY package.json ./
ENV DATABASE_URL=postgres://quzmhpaubzwbsq:3d0424b45344ba30a0c992d47ce65dd988f2fe0df7eefdd6ce32c883cbba3c74@ec2-52-19-170-215.eu-west-1.compute.amazonaws.com:5432/df81k60kuol4dm?&sslmode=require
RUN npm install
COPY . .
RUN npx db-migrate up
CMD ["npm", "start"]