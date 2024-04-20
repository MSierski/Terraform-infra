FROM node:18-alpine
WORKDIR /usr/app
RUN npm set @sap:registry=https://registry.npmjs.org
COPY . .
RUN npm install
EXPOSE 8080
CMD ["npm", "start"]
