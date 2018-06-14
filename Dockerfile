FROM node:latest
WORKDIR /usr/src/app/
RUN npm install
COPY packages/backend/package*.json /usr/src/app/
COPY . . 
RUN npm install
EXPOSE 3001
EXPOSE 27017
CMD ["npm", "start"]