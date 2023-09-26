FROM node:18.17.0
WORKDIR /src
COPY package*.json .
RUN npm i
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "dev"]