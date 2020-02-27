FROM node:13

WORKDIR /code

# Install npm packages
COPY package*.json ./
RUN npm install

CMD npm run dev
