#Dockerise node application
FROM node:18-alpine
#Create app directory
WORKDIR /user/src/app
#copy packeger.json and package-lock.json
COPY package*.json ./
#Install all dependencies
RUN npm install
#Bundle app source
COPY . .
#Expose port
EXPOSE 3000
#Start the app
CMD [ "node", "index.js" ]