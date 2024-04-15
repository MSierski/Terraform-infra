FROM node:alpine
WORKDIR /usr/app
RUN npm set @sap:registry=https://npm.sap.com
COPY . .
RUN npm install
EXPOSE 8080
EXPOSE 1091
CMD ["npm", "start"]